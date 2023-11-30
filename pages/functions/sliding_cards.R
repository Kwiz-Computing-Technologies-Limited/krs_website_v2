# Load the libraries
library(htmltools)
library(bslib)

# Create a function to generate a card sliding top bottom 
card_right_slide <- function(data) {
  div(
    class = "card_right_slide",
    div(class = "card-header", data$header),
    div(
      class = "card-body",
      div(class = "slide-in-top", data$body1),
      div(class = "slide-in-right", data$body2)
    )
  )
}

# Create a function to generate a card sliding left right
card_left_slide <- function(data) {
  div(
    class = "card_left_slide",
    div(class = "card-header", data$header),
    div(
      class = "card-body",
      div(class = "slide-in-top", data$body1),
      div(class = "slide-in-left", data$body2)
    )
  )
}

# ________________________________________________________


# Create a function to generate a slideshow for the "card_left_slides"
slideshow_left_slide <- function(cards) {
  tags$div(
    id = "slideshow",
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          card_left_slide(cards[[i]])
        )
      })
    )
  )
}

# Create a function to generate a slideshow for the "card_left_slides"
slideshow_left_slide <- function(cards) {
  tags$div(
    id = "slideshow",
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          card_left_slide(cards[[i]])
        )
      })
    )
  )
}

# Create a function to generate a slideshow for the "card_right_slides"
slideshow_right_slide <- function(cards) {
  tags$div(
    id = "slideshow",
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          card_right_slide(cards[[i]])
        )
      })
    )
  )
}

# Create a function to generate a slideshow for the "card_static_slides"
slideshow_static_slide <- function(cards) {
  tags$div(
    id = "slideshow",
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          bslib::card(cards[[i]])
        )
      })
    )
  )
}

# ________________________________________________________


# Add some custom CSS for the animations 
card_animation <- function() {
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
        
        // interval is in milliseconds. 1000 = 1 second -> so 1000 * 20 = 20 seconds
      $('.carousel').carousel({
        interval: 1000 * 20
      });

        "
  )
}