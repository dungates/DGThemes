#' @title Mapping theme
#' @description theme for making maps
#' @param base_size the base font sizer
#' @param base_family, the base family
#' @param bg background color
#'
#' @examples
#' library(sf)
#' library(ggplot2)
#' nc <- sf::read_sf(system.file("shape/nc.shp", package="sf"))
#' ggplot(nc) +
#'    geom_sf() +
#'    theme_map()
#'
#' @export
theme_map <- function(base_family = "Fira Sans", base_size = 15, bg = "gray15") {
  ret <- ggplot2::theme_void(base_family = base_family, base_size = base_size)

  ret <- ret + ggplot2::theme(legend.position = "bottom")

  ret <- ret + ggplot2::theme(plot.background = element_rect(fill = bg, color = bg),
                              panel.background = element_rect(fill = bg, color = bg))

  ret
}