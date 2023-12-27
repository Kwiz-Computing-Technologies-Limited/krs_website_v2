# Render the mission and vision cards
mission_vision_card = list(
  # Mission
  list(
    header = # Add a div tag for the card text
      card_header(
        "Our Mission",
        style = "font-size:24px; text-align: center; font-weight: bold; background-color: ;"),
    
    body1 = card_body(
      style = "min-height: 300px; ",
      
      # Add a div tag for the card text
      htmltools::tags$div(
        "To Empower businesses, deliver excellence, drive innovation, and ensure our clients are at the forefront of digital transformation through robust, scalable, and innovative software solutions. ",
        class = "card-text",
        style = "text-align: center;")
    )),
  
  # Vision
  list(
    header = # Add a div tag for the card text
      card_header(
        "Our Vision",
        style = "font-size:24px; text-align: center; font-weight: bold; background-color: ;"),
    
    body1 = card_body(
      style = "min-height: 300px;",
      
      # Add a div tag for the card text
      htmltools::tags$div(
        class = "card-text",
        
        "To create a future where every business, regardless of its size or industry, has access to top-tier digital solutions that drive growth, efficiency, and success.",
        style = "text-align: center;"))
  )
)


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
        href = "https://www.kwizresearch.com/",
        
        htmltools::tags$img(
          src = "/pages/images/logo/Kwiz_White_bg_Logo.jpg",
          style = "max-width: 60%; height: auto;")),
      
      # Add a div tag for the card text
      htmltools::tags$div(
        style = "background-color: ; margin-right: 30%; text-align: right;",
        class = "card-text",

        "Charity Begins at Home!",
        tags$p(),
        
        "At Kwiz Computing Technologies, we believe in the power of data, the potential of technology and full-stack
        R as a wholistic development framework for data science and software development.",
        tags$p(),
        
        "We have harnessed these tools to create our own website (using Quarto in R), 
        successfully integrated cloud APIs; deploying resources on AWS for storage, databases, security, web hosting, compute, ...
        to ensure optimal performance and scalability",
        tags$p(),
        
        "not only honing our skills and demonstrating our expertise and commitment to innovation, 
        but also deepening our understanding of our clients' needs.",
        tags$p(),
        
        "We're proud of what we've built - because at Kwiz  Computing Technologies, we don't just deliver solutions, we are empowered by them.")
    )),
  
  # card 2
  list(
    body1 = layout_column_wrap(
      width = 1/2,
      
      # Add a div tag for the card text
      tags$a(
        href = "https://canarytourske.onrender.com",
        
        htmltools::tags$img(
          src = "./pages/images/testimonials/canary_tours_logo.jpeg",
          style = "max-width: 60%; height: auto;")),
      
      # Add a div tag for the card text
      htmltools::tags$div(
        style = "background-color: ; margin-right: 30%; text-align: right;",
        "Feedback 2"
        )
    ))
)


# demos cards
#Define the list of demos
demos_cards = list(
  list(
    header = card_header("Interactive Dashboard"),
    body1 = card_body("Interactive Dashboard"),
    body2 = card_body(
      style = "margin-left: 7.5%; margin-right: 7.5%;",
      tags$iframe(
        style = "height: 900px;",
        src = "https://jean-kwizera-vic.shinyapps.io/Dashboard/",
        id = "shiny_dashboard",
        onload = 'this.contentWindow.postMessage("resize", "https://jean-kwizera-vic.shinyapps.io")'
      )
    )
  ),
  
  list(
    header = card_header("Mapping with Leaflet"),
    body1 = card_body("Species Mapping"),
    body2 = card_body(
      style = "margin-left: 7.5%; margin-right: 7.5%;",
      tags$iframe(
        style = "height: 850px;",
        src = "https://zp1mwp-jean0victor-kwizera.shinyapps.io/Appsilon_code_challenge/",
        id = "leaflet_map",
        onload = 'this.contentWindow.postMessage("resize", "https://zp1mwp-jean0victor-kwizera.shinyapps.io")'
      )
    )
  )
)




