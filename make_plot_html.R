# Function to create the the plotly graph, convert it to a
# widget, and save it to an html file




make_plot <- function(){
  require(plotly)
  set.seed(455)
  x = rnorm(100, mean=0.85, sd=1)
  y = rnorm(100, mean=6.2, sd=2)
  d <- data.frame(x=x, y=y)
  p <- ggplot(data=d, aes(x=x, y=y))
  p + geom_point(color="blue", size=2)
}


make_widget_html <- function(htmlfile) {
  p <- make_plot()
  p <- ggplotly(p) # converts ggplot obj to plotly obj
  htmlwidgets::saveWidget(p, htmlfile)
}
