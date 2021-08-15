premium_palette <- c("#d18975", "#8fd175", "#3f2d54", "#75b8d1", "#2d543d", "#c9d175", "#d1ab75", "#d175b8", "#758bd1")

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