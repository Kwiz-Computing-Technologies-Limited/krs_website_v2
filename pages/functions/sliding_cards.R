# Load the libraries
library(htmltools)
library(bslib)

# Render the mission and vision cards
mission_vision_card = list(
  # Mission
  list(
    header = # Add a div tag for the card text
      htmltools::tags$div(
        "Our Mission",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
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
      htmltools::tags$div(
        "Our Vision",
        style = "font-size:24px; text-align: center; font-weight: bold;"),
    
    body1 = card_body(
      style = "min-height: 300px;",
      
      # Add a div tag for the card text
      htmltools::tags$div(
        class = "card-text",
        
        "To create a future where every business, regardless of its size or industry, has access to top-tier digital solutions that drive growth, efficiency, and success.",
        style = "text-align: center;"))
  )
)


# Create a function to generate a card sliding top bottom 
card_right_slide <- function(data) {
  div(
    class = "card_right_slide",
    card(
      div(class = "card-header", card_header(data$header)),
      div(
        class = "card-body",
        div(class = "slide-in-top", card_body(data$body1)),
        div(class = "slide-in-right", card_body(data$body2)),
        div(class = "slide-in-top", card_body(data$body3))
      )
    )
  )
}

# Create a function to generate a card sliding left right
card_left_slide <- function(data) {
  div(
    class = "card_left_slide",
    card(
      div(class = "card-header", card_header(data$header)),
      div(
        class = "card-body",
        div(class = "slide-in-top", card_body(data$body1)),
        div(class = "slide-in-left", card_body(data$body2)),
        div(class = "slide-in-top", card_body(data$body3))
      )
    )
  )
}



# ________________________________________________________

# function to  add next and prev arrows
scroll_arrows <- function(slide_id) {
  # Add the prev and next arrows
  list(
      tags$a(
      class = "carousel-control-prev",
      href = paste0("#slideshow-", slide_id),
      role = "button",
      `data-bs-slide` = "prev",
     tags$span(class = "carousel-control-prev-icon", `aria-hidden` = "true"),
      tags$span(class = "Previous")
  ),
  
    tags$a(
      class = "carousel-control-next",
      href = paste0("#slideshow-", slide_id),
      role = "button",
      `data-bs-slide` = "next",
      tags$span(class = "carousel-control-next-icon", `aria-hidden` = "true"),
     tags$span(class = "Next")
    ))
}



# Create a function to generate a slideshow for the "card_left_slides"
slideshow_left_slide <- function(cards, slide_id, interval) {
  tags$div(
    id = paste0("slideshow-", slide_id),
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          `data-bs-interval` = interval,
          
          card_left_slide(cards[[i]]),
          
          # Add the prev and next arrows
          scroll_arrows(slide_id)
        )
      })
    )
  )
}

# Create a function to generate a slideshow for the "card_right_slides"
slideshow_right_slide <- function(cards, slide_id, interval) {
  tags$div(
    id = paste0("slideshow-", slide_id),
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          `data-bs-interval` = interval,
          card_right_slide(cards[[i]]),
          
          # Add the prev and next arrows
          scroll_arrows(slide_id)
        )
      })
    )
  )
}

# Create a function to generate a slideshow for the "card_static_slides"
slideshow_static_slide <- function(cards, slide_id, interval) {
  tags$div(
    id = paste0("slideshow", slide_id),
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          `data-bs-interval` = interval,
          bslib::card(cards[[i]]),
          
          # Add the prev and next arrows
          scroll_arrows(slide_id)
        )
      })
    )
  )
}

# ________________________________________________________


# Add some custom CSS for the animations 
card_animation_slide <- function() {
  tags$style(
    "
        .slide-in-top {
          animation: slide-in-top 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
        }
        
        .slide-in-bottom {
          animation: slide-in-bottom 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
        }
        
        .slide-in-left {
          animation: slide-in-left 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
        }
        
        .slide-in-right {
          animation: slide-in-right 0.5s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
        }
        
        @keyframes slide-in-top {
          0% {
            transform: translateY(-1000px);
            opacity: 0;
          }
          100% {
            transform: translateY(0);
            opacity: 1;
          }
        }
        
        @keyframes slide-in-bottom {
          0% {
            transform: translateY(1000px);
            opacity: 0;
          }
          100% {
            transform: translateY(0);
            opacity: 1;
          }
        }
        
        @keyframes slide-in-left {
          0% {
            transform: translateX(-1000px);
            opacity: 0;
          }
          100% {
            transform: translateX(0);
            opacity: 1;
          }
        }
        
        @keyframes slide-in-right {
          0% {
            transform: translateX(1000px);
            opacity: 0;
          }
          100% {
            transform: translateY(0);
            opacity: 1;
          }
        }
        "
  )
}

# Render the testimonials cards

render_browsable_slideshow <- function (cards, slide_id, interval) {
  # Render the slideshow
  htmltools::browsable(
    tags$html(
      tags$head(
        # Use Bootstrap 5
        tags$link(
          rel = "stylesheet",
          href = "https://stackpath.bootstrapcdn.com/bootstrap/5.0.0-alpha1/css/bootstrap.min.css"
        )
      ),
      
      tags$body(
        slideshow_right_slide(cards, slide_id = slide_id, interval = interval),
        # Add some custom CSS for the animations
        card_animation_slide()
      )
    )
  )
}


