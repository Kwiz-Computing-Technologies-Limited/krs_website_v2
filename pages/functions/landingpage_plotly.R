# Load the bslib, plotly, and htmltools packages
library(bslib)
library(plotly)
library(htmltools)
library(htmlwidgets)
library(later)

# Create an animated scatterplot of mpg vs. hp, grouped by cyl
landingpage_plotly <- function() {
  plot_ly(
    data = mtcars |>
      mutate(wt = round(wt, 0) * 5,
             disp = round(disp, 0)),
    x = ~hp,
    y = ~mpg,
    color = ~factor(disp),
    frame = ~gear,
    type = "scatter",
    mode = "markers",
    marker = list(size = ~(wt))
  ) |>
    layout(
      legend = list(title = list(text = "<b>Displacement</b>")),
      xaxis = list(title = "HP"),
      yaxis = list(title = "MPG")
    ) |> 
    animation_opts(
      4500, easing = "circle", redraw = TRUE,
      mode = "afterall"
    ) |>
    
    animation_button(visible = TRUE) |>
    onRender("
        function(el,x) {
          Plotly.animate(el);
        }")
}

# JS code
