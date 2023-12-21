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
          style = "max-height: 100%;")),
      
      # Add a div tag for the card text
      htmltools::tags$div(
        style = "background-color: ; width: 100%;",
        style = "background-color: ; width: 100%;",
        
        "Charity Begins at Home!",
        tags$p(),
        
        "At Kwiz Research, we believe in the power of data, the potential of technology and full-stack
        R as a wholistic development framework for data science and software development.",
        tags$p(),
        
        "We have harnessed these tools to create our own website (using Quarto in R), 
        successfully integrated cloud APIs; deploying resources on AWS for storage, databases, security, web hosting, compute, ...
        to ensure optimal performance and scalability",
        tags$p(),
        
        "not only honing our skills and demonstrating our expertise and commitment to innovation, 
        but also deepening our understanding of our clients' needs.",
        tags$p(),
        
        "We're proud of what we've built - because at Kwiz Research, we don't just deliver solutions, we create them.",
        
        class = "card-text",
        style = "text-align: center;",
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
          src = "/pages/images/logo/Kwiz_White_bg_Logo.jpg",
          style = "max-width: 100%;")),
      
      # Add a div tag for the card text
      htmltools::tags$div(
        "Feedback 2"
        )
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
      style = "height: 850px;",
      src = "https://zp1mwp-jean0victor-kwizera.shinyapps.io/Appsilon_code_challenge/",
      id = "leaflet_map",
      onload = 'this.contentWindow.postMessage("resize", "https://zp1mwp-jean0victor-kwizera.shinyapps.io")'
    )
  )
)




