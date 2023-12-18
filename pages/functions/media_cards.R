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

testimonials_cards = list(
  # card 1
  list(
    body1 = layout_column_wrap(
      width = 1/2,
      
      # Add a div tag for the card text
      tags$a(
        href = "https://canarytourske.onrender.com",
        
        htmltools::tags$img(
          src = "./pages/images/testimonials/canary_tours_logo.jpeg",
          style = "max-height: 400px;")),
      
      # Add a div tag for the card text
      htmltools::tags$div(
        style = "background-color: #f4ebe4; height: 400px;",
        "Feedback 1",
        class = "card-text",
        style = "text-align: center;")
    )),
  
  # card 2
  list(
    body1 = layout_column_wrap(
      width = 1/2,
      
      # Add a div tag for the card text
      tags$a(
        href = "https://www.kwizresearch.com/",
        
        htmltools::tags$img(
          src = "./pages/images/logo/Kwiz_White_bg_Logo.jpg",
          style = "max-height: 400px;")),
      
      # Add a div tag for the card text
      htmltools::tags$div(
        style = "background-color: #f4ebe4; height: 400px;",
        "Feedback 2",
        class = "card-text",
        style = "text-align: center;")
    ))
)


# demos cards
#Define the list of demos
demos_cards = list(
  list(
    header = "Interactive Dashboard",
    body1 = "Interactive Dashboard",
    body2 = tags$iframe(
      style = "height: 900px;",
      src = "https://jean-kwizera-vic.shinyapps.io/Dashboard/",
      id = "shiny_dashboard",
      onload = 'this.contentWindow.postMessage("resize", "https://jean-kwizera-vic.shinyapps.io")'
    )
  ),
  list(
    header = "Mapping with Leaflet",
    body1 = "Species Mapping",
    body2 = tags$iframe(
      style = "height: 900px;",
      src = "https://zp1mwp-jean0victor-kwizera.shinyapps.io/Appsilon_code_challenge/",
      id = "leaflet_map",
      onload = 'this.contentWindow.postMessage("resize", "https://zp1mwp-jean0victor-kwizera.shinyapps.io")'
    )
  )
)




