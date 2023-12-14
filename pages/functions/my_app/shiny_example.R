
box::use(
  shiny[selectInput, NS, moduleServer, reactive, tableOutput, renderTable, bootstrapPage, tagList],
  bslib[layout_column_wrap],
  tidyr[pivot_longer],
  promises[future_promise, `%...>%`],
  readr[read_csv],
  dplyr[filter],
  future[plan]
  
)

plan(multisession)

# asyc programming
read.csv.async <- function(file) {
  future_promise({
    read_csv(file)
  })
}


ui = bootstrapPage(
  layout_column_wrap(
    width = 1/2, 
    
    layout_column_wrap(
      width = 1/2,
      style = tags$style("text-align: center; border-color: brown; border-radius: 10px; border: 2px;"),
      
      tags$div(
        tags$style("min-height: 300px;"),
        selectInput("month", "month", 
                    choices = c("APR", "MAY", "JUN", "JUL", "AUG", "OCT"),
                    selected = c("APR", "AUG"), multiple = TRUE)),
        
        tags$div(
          tags$style("min-height: 300px;"),
          selectInput("year", "year", 
                      choices = c(1958, 1959, 1960),
                      selected = c(1958, 1959, 1960), multiple = TRUE)
        )),
    
    tags$div(
      tableOutput("table"))
  ))

server = function(input, output, session) {
  data = read.csv.async("https://people.sc.fsu.edu/~jburkardt/data/csv/airtravel.csv")
  
  data_view = reactive({
    data  %...>%
      pivot_longer(cols = c("1958", "1959", "1960"), names_to = "Year") %...>%
      filter(Month %in% input$month, Year %in% input$year)
  })
  
  output$table = renderTable({
    data_view()
  })
}

shinyApp(ui, server)


