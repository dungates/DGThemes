#' Additional Themes and Theme Components for 'ggplot2'
#'
#' A compilation of extra themes and theme components for 'ggplot2' with an
#' emphasis on typography.
#'
#' The core theme: `theme_premium` uses Tisa Sans Pro which will need to be installed
#' on just about any system, and can be downloaded [here](https://fontshub.pro/font/ff-tisa-sans-pro-download)
#' or from this [github](https://github.com/ofnlut/IronGrads/tree/master/grads/static/fonts/Tisa-typeface/Tisa%20Sans%20Pro).
#' This font is condensed, has solid default kerning pairs and geometric numbers.
#' That's what I consider the "font trifecta" must-have for charts. A common
#' prerequisite for charts for fonts is that they have a diversity of weights. Tisa Sans
#' Pro has a wealth of diversity in its weights, as well as a pristine quality to its base
#' font. The other custom theme `theme_duncan` is a personal theme that is continuing to undergo development.
#'
#' There is an option `DGThemes.loadfonts` which -- if set to `TRUE` -- will
#' call `extrafont::loadfonts()` to register non-core fonts with R PDF & PostScript
#' devices. If you are running under Windows, the package calls the same function
#' to register non-core fonts with the Windows graphics device.
#'
#' @md
#' @name DGThemes
#' @docType package
#' @author Duncan Gates (duncangates.me)
#' @keywords internal
#' @import ggplot2 grid scales extrafont grDevices gt
#' @importFrom magrittr %>%
#' @importFrom gdtools set_dummy_conf
#' @import rmarkdown knitr htmltools
#' @importFrom tools file_path_sans_ext
"_PACKAGE"

#' DGThemes exported operators
#'
#' The following functions are imported and then re-exported
#' from the DGThemes package to enable use of the magrittr
#' pipe operator with no additional library calls
#'
#' @name DGThemes-exports
NULL

#' @name %>%
#' @export
#' @rdname DGThemes-exports
NULL
