context("core theme components work")
test_that("we can do something", {

  tmp_x1 <- scale_x_comma()
  tmp_x2 <- scale_x_percent()

  tmp_y1 <- scale_y_comma()
  tmp_y2 <- scale_y_percent()

  fil <- scale_fill_premium()
  col <- scale_color_premium()

  gg_tmp <- ggplot2::ggplot() +
    ggplot2::labs(x="Thsi", y="This", title="This", subtitle="This", caption="Thsi")

  th <- theme_premium(grid="XY", axis="xy")
  expect_that(th$plot.title$family, equals("Tisa Sans Pro"))

  thrc <- theme_premium_rc(grid="XY", axis="xy")
  expect_that(thrc$plot.title$family, equals("Roboto Condensed"))

  invisible(scale_x_percent(sec.axis = sec_axis(~.+10)))
  invisible(scale_y_percent(sec.axis = sec_axis(~.+10)))
  invisible(scale_x_comma(sec.axis = sec_axis(~.+10)))
  invisible(scale_y_comma(sec.axis = sec_axis(~.+10)))

  invisible(scale_x_percent(sec.axis = ~.+10))
  invisible(scale_y_percent(sec.axis = ~.+10))
  invisible(scale_x_comma(sec.axis = ~.+10))
  invisible(scale_y_comma(sec.axis = ~.+10))

  invisible(theme_premium(grid=FALSE))
  invisible(theme_premium_rc(grid=FALSE))
  invisible(theme_premium(grid="XY"))
  invisible(theme_premium_rc(grid="XY"))
  invisible(theme_premium(grid="xy"))
  invisible(theme_premium_rc(grid="xy"))

  invisible(theme_premium(axis=TRUE))
  invisible(theme_premium_rc(axis=TRUE))

  invisible(theme_premium(axis=FALSE))
  invisible(theme_premium_rc(axis=FALSE))
  invisible(theme_premium(axis="xy"))
  invisible(theme_premium_rc(axis="xy"))
  invisible(theme_premium(axis=""))
  invisible(theme_premium_rc(axis=""))

  # invisible(update_geom_font_defaults())
  # invisible(theme_premium(ticks=TRUE))
  # invisible(import_roboto_condensed())
  # invisible(theme_premium_rc(ticks=TRUE))

  expect_that(tmp_x1$expand, equals(c(0.01,0)))
  expect_that(tmp_x2$expand, equals(c(0.01,0)))
  expect_that(tmp_y1$expand, equals(c(0.01,0)))
  expect_that(tmp_y2$expand, equals(c(0.01,0)))

  expect_that(premium_pal()(1), equals("#d18975"))
  expect_that(col$palette(1), equals("#d18975"))
  expect_that(fil$palette(1), equals("#d18975"))

  testthat::skip_on_cran()
  invisible(import_roboto_condensed())

})
