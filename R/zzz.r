.onAttach <- function(libname, pkgname) {

  tw_font_dir <- system.file("fonts", "titillium-web", package="DGThemes")
  gs_font_dir <- system.file("fonts", "goldman-sans", package="DGThemes")
  es_font_dir <- system.file("fonts", "econ-sans", package="DGThemes")
  rc_font_dir <- system.file("fonts", "roboto-condensed", package="DGThemes")
  pub_font_dir <- system.file("fonts", "public-sans", package="DGThemes")
  ps_font_dir <- system.file("fonts", "plex-sans", package="DGThemes")
  th_font_dir <- system.file("fonts", "tinyhand", package="DGThemes")


  # if (interactive()) {
  #   packageStartupMessage(paste0("DGThemes is under *active* development. ",
  #                                "See https://github.com/hrbrmstr/DGThemes for info/news."))
  # }

  # Suggestion by @alexwhan

  # if (.Platform$OS.type == "windows")  { # nocov start
  #   if (interactive()) packageStartupMessage("Registering Windows fonts with R")
  #   extrafont::loadfonts("win", quiet = TRUE)
  # }
  #
  # if (getOption("DGThemes.loadfonts", default = FALSE)) {
  #   if (interactive()) packageStartupMessage("Registering PDF & PostScript fonts with R")
  #   extrafont::loadfonts("pdf", quiet = TRUE)
  #   extrafont::loadfonts("postscript", quiet = TRUE)
  # }
  #
  # fnt <- extrafont::fonttable()
  # if (!any(grepl("Arial[ ]Narrow|Roboto[ ]Condensed", fnt$FamilyName))) {
  #   packageStartupMessage("NOTE: Either Arial Narrow or Roboto Condensed fonts are required to use these themes.")
  #   packageStartupMessage("      Please use DGThemes::import_roboto_condensed() to install Roboto Condensed and")
  #   packageStartupMessage("      if Arial Narrow is not on your system, please see https://bit.ly/arialnarrow")
  # } # nocov end

}
