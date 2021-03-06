
## DGThemes

Additional Themes and Theme Components for ‘ggplot2::ggplot2’

------------------------------------------------------------------------

This is a personal package for themes and theme components for
ggplot2::ggplot2, gt, and other tools as I discover and use them
throughout R.

The core theme: `theme_premium` uses Tisa Sans Pro which will need to be
installed on just about any system, and can be downloaded
[here](https://fontshub.pro/font/ff-tisa-sans-pro-download) or from this
[github](https://github.com/ofnlut/IronGrads/tree/master/grads/static/fonts/Tisa-typeface/Tisa%20Sans%20Pro).
This font is condensed, has solid default kerning pairs and geometric
numbers. That’s what I consider the “font trifecta” must-have for
charts. A common prerequisite for charts for fonts is that they have a
diversity of weights. Tisa Sans Pro has a wealth of diversity in its
weights, as well as a pristine quality to its base font.

The following functions for ggplot2::ggplot2 are implemented/objects are
exported:

Themes:

-   `theme_duncan`: Open Sans, Fira Sans
-   `theme_premium`: Tisa Sans Pro
-   `theme_premium_gs`: Goldman Sans Condensed
-   `theme_premium_es`: Econ Sans Condensed
-   `theme_premium_rc`: Roboto Condensed
-   `DGThemes::theme_premium_ps`: IBM Plex Sans font
-   `theme_premium_pub`: Public Sans
-   `theme_premium_tw`: Titilium Web
-   `theme_modern_rc`: Roboto Condensed dark theme
-   `theme_ft_rc`: Dark theme based on FT’s dark theme (Roboto
    Condensed)

Scales (that align with various themes):

-   `DGThemes::scale_color_premium`: Discrete color & fill scales based
    on the premium palette
-   `scale_colour_premium`: Discrete color & fill scales based on the
    premium palette
-   `DGThemes::scale_fill_premium`: Discrete color & fill scales based
    on the premium palette
-   `scale_color_ft`: Discrete color & fill scales based on the FT
    palette
-   `scale_colour_ft`: Discrete color & fill scales based on the FT
    palette
-   `scale_fill_ft`: Discrete color & fill scales based on the FT
    palette
-   `scale_x_comma`: X & Y scales with opinionated presets for percent &
    comma label formats
-   `scale_x_percent`: X & Y scales with opinionated presets for percent
    & comma label formats
-   `scale_y_comma`: X & Y scales with opinionated presets for percent &
    comma label formats
-   `scale_y_percent`: X & Y scales with opinionated presets for percent
    & comma label formats

Palettes/Named Colors:

-   `premium_pal`: A muted, qualitative color palette
-   `ft_cols`: FT color palette
-   `ft_pal`: A bright qualitative color palette
-   `ft_text_col`: FT color palette

Fonts:

-   `font_tn`: Tisa Sans Pro font name R variable aliases
-   `font_es`: Econ Sans font name R variable aliases
-   `font_es_bold`: Econ Sans font name R variable aliases
-   `font_es_light`: Econ Sans font name R variable aliases
-   `font_fs`: Fira Sans font name R variable aliases
-   `font_rc`: Roboto Condensed font name R variable aliases
-   `font_rc_light`: Roboto Condensed font name R variable aliases
-   `font_pub`: Public Sans font name R variable aliases
-   `font_pub_bold`: Public Sans font name R variable aliases
-   `font_pub_light`: Public Sans font name R variable aliases
-   `font_pub_thin`: Public Sans font name R variable aliases
-   `font_os`: Open Sans font name R variable aliases
-   `font_ps`: PlexSans font name R variable aliases
-   `font_ps_light`: PlexSans font name R variable aliases
-   `font_tw`: Titillium Web font name R variable aliases
-   `font_tw_bold`: Titillium Web font name R variable aliases
-   `font_tw_light`: Titillium Web font name R variable aliases

R Markdown:

-   `premium`: premium R markdown template
-   `premium_pdf`: premium R markdown template for PDF output

Utilities:

-   `flush_ticks`: Makes axis text labels flush on the ends
-   `ft_geom_defaults`: Change geom defaults from black to custom lights
    for the FT theme
-   `import_econ_sans`: Import Econ Sans Condensed font for use in
    charts
-   `import_plex_sans`: Import IBM Plex Sans font for use in charts
-   `import_roboto_condensed`: Import Roboto Condensed font for use in
    charts
-   `import_titillium_web`: Import Titillium Web font for use in charts
-   `modern_geom_defaults`: Change geom defaults from black to white for
    the modern theme
-   `update_geom_font_defaults`: Update matching font defaults for text
    geoms

The following functions for gt are implemented/objects are exported:

-   `gt_theme_duncan` - Makes a gt table with black outlines and bold
    title/column labels

### Installation

``` r
# If this ever gets on the CRAN
install.packages("DGThemes")
devtools::install_github("dungates/DGThemes")
remotes::install_github("dungates/DGThemes")
```

NOTE: To use the ‘remotes’ install options you will need to have the
[{remotes} package](https://github.com/r-lib/remotes) installed.

### Usage

``` r
library(DGThemes)
library(gcookbook)
library(ggplot2)

# current verison
packageVersion("DGThemes")
```

    ## [1] '0.8.6'

### Base theme (Tisa Sans Pro)

``` r
mtcars %>%
  dplyr::arrange(dplyr::desc(mpg)) %>%
  head() %>%
  gt::gt() %>%
  gt::tab_header(title = "Cars n stuff", subtitle = "I don't know anything about cars") %>%
  DGThemes::gt_theme_duncan()
```

![](README_files/figure-gfm/gt_example.png){width = 50%}

``` r
ggplot2::ggplot(tophitters2001, ggplot2::aes(hr, so)) +
  ggplot2::geom_point() +
  ggplot2::labs(
    x = "Home Runs", y = "Strikeouts",
    title = "Seminal ggplot2::ggplot2 scatterplot example",
    subtitle = "Home runs come at the cost of strikeouts",
    caption = "Data from the `tophitters2001` default set"
  ) +
  ggplot2::geom_text(ggplot2::aes(label = dplyr::if_else(hr > 50, name, NULL)),
    vjust = 1.2
  ) +
  DGThemes::theme_premium()
```

![](README_files/figure-gfm/at-1.png)<!-- -->

### Roboto Condensed

``` r
ggplot2::ggplot(beaver1, ggplot2::aes(time, temp)) +
  ggplot2::geom_line() +
  ggplot2::labs(
    x = "Time (hm)", y = "Temperature (celsius)",
    title = "Beaver Temperature over Time",
    subtitle = "Beavers activity peaks at night, around 10 o'clock.",
    caption = "Data from the `beaver1` default set"
  ) +
  DGThemes::theme_premium_rc()
```

![](README_files/figure-gfm/rc-1.png)<!-- -->

### New FT Theme!

``` r
Seatbelts <- tibble::as_tibble(Seatbelts)
ggplot2::ggplot(Seatbelts, ggplot2::aes(DriversKilled, kms)) +
  ggplot2::geom_point(ggplot2::aes(color = factor(law))) +
  ggplot2::labs(
    x = "Number of Drivers Killed", y = "Distance Driven (kms)",
    title = "Always wear a seatbelt!",
    subtitle = "Deaths fall dramatically when there are laws in place that require seatbelts.",
    color = "Seatbelt\nRequirement",
    caption = "Data from the `Seatbelts` default set"
  ) +
  ggplot2::coord_flip() +
  DGThemes::scale_color_ft(labels = c("Not Mandatory", "Mandatory")) +
  DGThemes::theme_ft_rc()
```

![](README_files/figure-gfm/ft-1.png)<!-- -->

### IBM Plex Sans

``` r
HairEyeColor <- tibble::as_tibble(HairEyeColor)
ggplot2::ggplot(HairEyeColor) +
  ggplot2::geom_boxplot(ggplot2::aes(x = Eye, y = n, color = Sex)) +
  DGThemes::scale_color_premium() +
  DGThemes::scale_fill_premium() +
  ggplot2::facet_wrap(~Sex) +
  ggplot2::labs(
    title = "Eye Color in Males & Females",
    subtitle = "The distribution of eye color appears to be the exact same between males and females",
    caption = "Source: DGThemes & `HairEyeColor` default set"
  ) +
  DGThemes::theme_premium_ps(grid = "XY", axis = "xy") +
  ggplot2::theme(legend.position = "bottom") -> gg

gg
```

![](README_files/figure-gfm/ps-1.png)<!-- -->

### Titillium Web

``` r
ggplot2::ggplot(diamonds, ggplot2::aes(carat, price)) +
  ggplot2::geom_jitter(ggplot2::aes(color = clarity, fill = clarity), size = 3, shape = 21, alpha = 1 / 2) +
  ggplot2::scale_y_continuous(labels = scales::comma) +
  DGThemes::scale_color_premium() +
  DGThemes::scale_fill_premium() +
  ggplot2::facet_wrap(~clarity) +
  ggplot2::labs(
    title = "Titillium Web",
    subtitle = "This is a subtitle to see the how it looks in Titillium Web",
    caption = "Source: DGThemes & `Diamonds` default set"
  ) +
  DGThemes::theme_premium_tw(grid = "XY", axis = "xy") +
  ggplot2::theme(legend.position = "bottom")
```

![](README_files/figure-gfm/tw-1.png)<!-- -->

### Scales (Color/Fill)

``` r
ggplot2::ggplot(tophitters2001, ggplot2::aes(hr, so, color = lg)) +
  ggplot2::geom_point() +
  ggplot2::labs(
    x = "Home Runs", y = "Strikeouts",
    title = "Seminal ggplot2::ggplot2 scatterplot example",
    subtitle = "Home runs come at the cost of strikeouts",
    caption = "Data from the `tophitters2001` default set"
  ) +
  ggplot2::geom_text(ggplot2::aes(label = dplyr::if_else(hr > 50, name, NULL)),
    vjust = 1.2
  ) +
  DGThemes::scale_color_premium() +
  DGThemes::theme_premium() +
  ggplot2::theme(legend.position = "top")
```

![](README_files/figure-gfm/sc-1.png)<!-- -->

### Scales (Axis)

``` r
tophitters2001 %>%
  dplyr::mutate(count = sum(hr)) %>%
  dplyr::select(name, hr, count) %>%
  dplyr::summarise(
    pct = 100 * hr / sum(hr),
    name = name,
    hr = hr
  ) %>%
  dplyr::arrange(desc(pct)) %>%
  dplyr::slice(c(1:10)) %>%
  ggplot2::ggplot(ggplot2::aes(forcats::fct_reorder(name, pct), pct)) +
  ggplot2::geom_col() +
  ggplot2::geom_text(ggplot2::aes(label = paste0(hr, "\n(", round(pct, 2), "%)")), vjust = -0.8, color = "black") +
  DGThemes::scale_y_percent(scale = 1, limits = c(0, 3)) +
  ggplot2::labs(
    x = "Player", y = "Percent of home runs in season",
    title = "Barry Bonds ",
    subtitle = "And here's another hit, Barry Bonds",
    caption = "Data from the `mtcars` default set"
  ) +
  DGThemes::theme_premium(grid = "Y")
```

![](README_files/figure-gfm/ax1-1.png)<!-- -->

``` r
ggplot2::ggplot(uspopage, ggplot2::aes(x = Year, y = Thousands, fill = AgeGroup)) +
  ggplot2::geom_area() +
  DGThemes::scale_fill_premium() +
  ggplot2::scale_x_continuous(expand = c(0, 0)) +
  DGThemes::scale_y_comma() +
  ggplot2::labs(
    title = "Age distribution of population in the U.S., 1900-2002",
    subtitle = "Example data from the R Graphics Cookbook",
    caption = "Source: R Graphics Cookbook"
  ) +
  DGThemes::theme_premium_rc(grid = "XY") +
  ggplot2::theme(axis.text.x = element_text(hjust = c(0, 0.5, 0.5, 0.5, 1))) +
  ggplot2::theme(legend.position = "bottom")
```

![](README_files/figure-gfm/ax2-1.png)<!-- -->

``` r
DGThemes::update_geom_font_defaults(font_rc_light)

dplyr::count(mpg, class) %>%
  dplyr::mutate(n = n * 2000) %>%
  dplyr::arrange(n) %>%
  dplyr::mutate(class = factor(class, levels = class)) %>%
  ggplot2::ggplot(ggplot2::aes(class, n)) +
  ggplot2::geom_col() +
  ggplot2::geom_text(ggplot2::aes(label = scales::comma(n)), hjust = 0, nudge_y = 2000) +
  DGThemes::scale_y_comma(limits = c(0, 150000)) +
  ggplot2::coord_flip() +
  ggplot2::labs(
    x = "Fuel efficiency (mpg)", y = "Weight (tons)",
    title = "Seminal ggplot2::ggplot2 column chart example with commas",
    subtitle = "A plot that is only useful for demonstration purposes, esp since you'd never\nreally want direct labels and axis labels",
    caption = "Brought to you by the letter 'g'"
  ) +
  DGThemes::theme_premium_rc(grid = "X")
```

![](README_files/figure-gfm/ax3-1.png)<!-- -->

### Spellcheck ggplot2::ggplot2 labels from `hrbrthemes`

``` r
df <- data.frame(x = c(20, 25, 30), y = c(4, 4, 4), txt = c("One", "Two", "Three"))

ggplot2::ggplot(mtcars, ggplot2::aes(mpg, wt)) +
  ggplot2::geom_point() +
  ggplot2::labs(
    x = "This is some txt", y = "This is more text",
    title = "Thisy is a titlle",
    subtitle = "This is a subtitley",
    caption = "This is a captien"
  ) +
  DGThemes::theme_premium_rc(grid = "XY") -> gg

hrbrthemes::gg_check(gg)
```

    ## Possible misspelled words in [title]: (Thisy, titlle)

    ## Possible misspelled words in [subtitle]: (subtitley)

    ## Possible misspelled words in [caption]: (captien)

![](README_files/figure-gfm/sp-1.png)<!-- -->

### DGThemes Metrics

| Lang | \# Files |  (%) |  LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|-----:|-----:|-----:|------------:|-----:|---------:|-----:|
| R    |       26 | 0.41 | 1928 | 0.42 |         351 | 0.38 |     1192 | 0.43 |
| Rmd  |        2 | 0.03 |  164 | 0.04 |         102 | 0.11 |      173 | 0.06 |
| SVG  |        2 | 0.03 |  150 | 0.03 |           0 | 0.00 |        0 | 0.00 |
| YAML |        2 | 0.03 |   52 | 0.01 |           7 | 0.01 |        6 | 0.00 |
| SUM  |       32 | 0.50 | 2294 | 0.50 |         460 | 0.50 |     1371 | 0.50 |

clock Package Metrics for DGThemes
