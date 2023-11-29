# Load the libraries
library(htmltools)
library(bslib)

# Create a function to generate a card
card <- function(data) {
  div(
    class = "card",
    div(class = "card-header", data$header),
    div(
      class = "card-body",
      div(class = "slide-in-top", data$body1),
      div(class = "slide-in-bottom", data$body2)
    )
  )
}

# Create a function to generate a slideshow
slideshow <- function(cards) {
  tags$div(
    id = "slideshow",
    class = "carousel slide",
    `data-bs-ride` = "carousel",
    tags$div(
      class = "carousel-inner",
      lapply(seq_along(cards), function(i) {
        tags$div(
          class = ifelse(i == 1, "carousel-item active", "carousel-item"),
          card(cards[[i]])
        )
      })
    )
  )
}

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
        "
  )
}