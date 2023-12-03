# Load the bslib, plotly, and htmltools packages
library(bslib)
library(ggplot2)
library(plotly)
library(htmltools)
library(htmlwidgets)
library(later)
library(gganimate)

# Create an animated scatterplot of mpg vs. hp, grouped by cyl
landingpage_plotly <- function(name) {
  if(! paste0(name,".gif") %in% list.files("pages/images/gifs/")) {
    animated_plot = {ggplot(
      data = mtcars |>
        mutate(wt = round(wt, 0) * 5,
               disp = round(disp, 0),
               gear = factor(gear)),
      aes(x = hp, y = mpg, color = gear)) +
      geom_point() + theme(panel.grid = element_blank(),
                           panel.background = element_blank()) + 
      transition_states(cyl, transition_length = 0.05, state_length = 0.1) +
      enter_grow() + exit_fly() + labs(title = "Cyl: {closest_state}", xlab = "HP", ylab = "mpg")} |>
      animate()
    
    anim_save(paste0("pages/images/gifs/",name,".gif"), rewind = TRUE)
    src = paste0("pages/images/gifs/",name,".gif")
  }
  
  src = paste0("pages/images/gifs/",name,".gif")
  return(src)
}

# JS code
