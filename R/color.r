premium_palette <- c("#C25E5E", "#C05975", "#B9588C", "#A75DA5", "#8466B9", "#586FCA",
                     "#1978D0", "#007FCC", "#0085C1")

#' A muted, qualitative color palette
#'
#' @export
#' @examples
#' library(scales)
#' scales::show_col(premium_pal()(9))
premium_pal <- function() { manual_pal(premium_palette) }

#' Discrete color & fill scales based on the premium palette
#'
#' See [premium_pal()].
#'
#' @md
#' @inheritDotParams ggplot2::discrete_scale -expand -position
#' @rdname scale_premium
#' @export
scale_colour_premium <- function(...) { discrete_scale("colour", "premium", premium_pal(), ...) }

#' @export
#' @rdname scale_premium
scale_color_premium <- scale_colour_premium

#' @export
#' @rdname scale_premium
scale_fill_premium <- function(...) { discrete_scale("fill", "premium", premium_pal(), ...) }