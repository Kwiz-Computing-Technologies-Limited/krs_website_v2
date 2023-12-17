websites <- list(
  # figure 1
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "charts",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(

      # Add a div tag 
      htmltools::tags$div(
        class = "card-image",
        htmltools::tags$img(
          src = landingpage_plotly("image_1")
        ))
    )),
  
  # figure 2
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "maps",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(

      # Add a div tag 
      htmltools::tags$div(
        class = "card-image",
        htmltools::tags$img(
          src = landingpage_plotly("image_1")
        )))
  )
)


apis <- list(
  # figure 1
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "Plumber API's",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(
      
      # Add a div tag 
      htmltools::tags$div(
        class = "card-image",
        htmltools::tags$img(
          src = landingpage_plotly("image_1")
        ))
    )),
  
  # figure 2
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "3rd Party Integrations",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(
      
      # Add a div tag 
      htmltools::tags$div(
        class = "card-image",
        htmltools::tags$img(
          src = landingpage_plotly("image_1")
        )))
  )
)


cloud <- list(
  # figure 1
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "AWS",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(
      
      # Add a div tag 
      htmltools::tags$div(
        class = "card-image",
        htmltools::tags$img(
          src = landingpage_plotly("image_1")
        ))
    )),
  
  # figure 2
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "Solutions Architecture",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(
      
      # Add a img tag 
      htmltools::tags$img(
        src = landingpage_plotly("image_1"),
        width = "100%"
      ))
  )
)


enterprise <- list(
  # figure 1
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "Shiny",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(
      
      # Add a div tag 
      htmltools::tags$div(
        class = "card-image",
        htmltools::tags$img(
          src = landingpage_plotly("image_1")
        ))
    )),
  
  # figure 2
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "Dashboards",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(

      # Add a div tag 
      htmltools::tags$div(
        class = "card-image",
        htmltools::tags$img(
          src = landingpage_plotly("image_1")
        )))
  )
)

