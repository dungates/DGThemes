
## DGThemes

Additional Themes and Theme Components for ‘ggplot2’

------------------------------------------------------------------------

This is a personal package for themes and theme components for ggplot2,
gt, and other tools as I discover and use them throughout R.

The core theme: `theme_premium` (“premium” is Latin for “precise”) uses
Tisa Sans Pro which should be installed on practically any modern
system, so it’s “free”-ish. This font is condensed, has solid default
kerning pairs and geometric numbers. That’s what I consider the “font
trifecta” must-have for charts. An additional quality for fonts for
charts is that they have a diversity of weights. Tisa Sans Pro (the one
on most systems, anyway) does not have said diversity but this quality
is not (IMO) a “must have”.

The following functions for ggplot2 are implemented/objects are
exported:

Themes:

-   `theme_duncan`: Open Sans, Fira Sans
-   `theme_premium`: Tisa Sans Pro
-   `theme_premium_gs`: Goldman Sans Condensed
-   `theme_premium_es`: Econ Sans Condensed
-   `theme_premium_rc`: Roboto Condensed
-   `theme_premium_ps`: IBM Plex Sans font
-   `theme_premium_pub`: Public Sans
-   `theme_premium_tw`: Titilium Web
-   `theme_modern_rc`: Roboto Condensed dark theme
-   `theme_ft_rc`: Dark theme based on FT’s dark theme (Roboto
    Condensed)

Scales (that align with various themes):

-   `scale_color_premium`: Discrete color & fill scales based on the
    premium palette
-   `scale_colour_premium`: Discrete color & fill scales based on the
    premium palette
-   `scale_fill_premium`: Discrete color & fill scales based on the
    premium palette
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

-   `font_an`: Tisa Sans Pro font name R variable aliases
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
-   `gg_check`: Spell check ggplot2 plot labels
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
devtools::install_github("dungates/DGThemes")
```

### Usage

``` r
devtools::load_all()
library(DGThemes)
library(gcookbook)
library(tidyverse)

# current verison
packageVersion("DGThemes")
```

    ## [1] '0.8.6'

### Base theme (Tisa Sans Pro)

``` r
ggplot(mtcars, aes(mpg, wt)) +
  geom_point() +
  labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
       title="Seminal ggplot2 scatterplot example",
       subtitle="A plot that is only useful for demonstration purposes",
       caption="Brought to you by the letter 'g'") + 
  theme_premium()
```

![](README_files/figure-gfm/an-1.png)<!-- -->

### Roboto Condensed

``` r
ggplot(mtcars, aes(mpg, wt)) +
  geom_point() +
  labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
       title="Seminal ggplot2 scatterplot example",
       subtitle="A plot that is only useful for demonstration purposes",
       caption="Brought to you by the letter 'g'") + 
  theme_premium_rc()
```

![](README_files/figure-gfm/rc-1.png)<!-- -->

### New FT Theme!

``` r
ggplot(mtcars, aes(mpg, wt)) +
  geom_point(color = ft_cols$yellow) +
  labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
       title="Seminal ggplot2 scatterplot example",
       subtitle="A plot that is only useful for demonstration purposes",
       caption="Brought to you by the letter 'g'") + 
  theme_ft_rc()
```

![](README_files/figure-gfm/ft-1.png)<!-- -->

### IBM Plex Sans

``` r
ggplot(mpg, aes(displ, hwy)) +
  geom_jitter(aes(color=class, fill=class), size=3, shape=21, alpha=1/2) +
  scale_x_continuous(expand=c(0,0), limits=c(1, 8), breaks=1:8) +
  scale_y_continuous(expand=c(0,0), limits=c(10, 50)) +
  scale_color_premium() +
  scale_fill_premium() +
  facet_wrap(~class, scales="free") +
  labs(
    title="IBM Plex Sans Test",
    subtitle="This is a subtitle to see the how it looks in IBM Plex Sans",
    caption="Source: DGThemes & IBM"
  ) +
  theme_premium_ps(grid="XY", axis="xy") +
  theme(legend.position="none") -> gg

flush_ticks(gg)
```

    ## Warning: Vectorized input to `element_text()` is not officially supported.
    ## Results may be unexpected or may change in future versions of ggplot2.

    ## Warning: Vectorized input to `element_text()` is not officially supported.
    ## Results may be unexpected or may change in future versions of ggplot2.

    ## theme(axis.text.x=element_text(hjust=c(0, rep(0.5, 6), 1))) +
    ## theme(axis.text.y=element_text(vjust=c(0, rep(0.5, 3), 1)))

![](README_files/figure-gfm/ps-1.png)<!-- -->

### Titillium Web

``` r
ggplot(mpg, aes(displ, hwy)) +
  geom_jitter(aes(color=class, fill=class), size=3, shape=21, alpha=1/2) +
  scale_x_continuous(expand=c(0,0), limits=c(1, 8), breaks=1:8) +
  scale_y_continuous(expand=c(0,0), limits=c(10, 50)) +
  scale_color_premium() +
  scale_fill_premium() +
  facet_wrap(~class, scales="free") +
  labs(
    title="Titillium Web",
    subtitle="This is a subtitle to see the how it looks in Titillium Web",
    caption="Source: DGThemes & Google"
  ) +
  theme_premium_tw(grid="XY", axis="xy") +
  theme(legend.position="none") -> gg

flush_ticks(gg)
```

    ## Warning: Vectorized input to `element_text()` is not officially supported.
    ## Results may be unexpected or may change in future versions of ggplot2.

    ## Warning: Vectorized input to `element_text()` is not officially supported.
    ## Results may be unexpected or may change in future versions of ggplot2.

    ## theme(axis.text.x=element_text(hjust=c(0, rep(0.5, 6), 1))) +
    ## theme(axis.text.y=element_text(vjust=c(0, rep(0.5, 3), 1)))

![](README_files/figure-gfm/tw-1.png)<!-- -->

### Scales (Color/Fill)

``` r
ggplot(mtcars, aes(mpg, wt)) +
  geom_point(aes(color=factor(carb))) +
  labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
       title="Seminal ggplot2 scatterplot example",
       subtitle="A plot that is only useful for demonstration purposes",
       caption="Brought to you by the letter 'g'") + 
  scale_color_premium() +
  theme_premium_rc()
```

![](README_files/figure-gfm/sc-1.png)<!-- -->

### Scales (Axis)

``` r
count(mpg, class) %>% 
  mutate(pct=n/sum(n)) %>% 
  ggplot(aes(class, pct)) +
  geom_col() +
  scale_y_percent() +
  labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
       title="Seminal ggplot2 column chart example with percents",
       subtitle="A plot that is only useful for demonstration purposes",
       caption="Brought to you by the letter 'g'") + 
  theme_premium(grid="Y")
```

![](README_files/figure-gfm/ax1-1.png)<!-- -->

``` r
ggplot(uspopage, aes(x=Year, y=Thousands, fill=AgeGroup)) + 
  geom_area() +
  scale_fill_premium() +
  scale_x_continuous(expand=c(0,0)) +
  scale_y_comma() +
  labs(title="Age distribution of population in the U.S., 1900-2002",
       subtitle="Example data from the R Graphics Cookbook",
       caption="Source: R Graphics Cookbook") +
  theme_premium_rc(grid="XY") +
  theme(axis.text.x=element_text(hjust=c(0, 0.5, 0.5, 0.5, 1))) +
  theme(legend.position="bottom")
```

    ## Warning: Vectorized input to `element_text()` is not officially supported.
    ## Results may be unexpected or may change in future versions of ggplot2.

![](README_files/figure-gfm/ax2-1.png)<!-- -->

``` r
update_geom_font_defaults(font_rc_light)

count(mpg, class) %>% 
  mutate(n=n*2000) %>% 
  arrange(n) %>% 
  mutate(class=factor(class, levels=class)) %>% 
  ggplot(aes(class, n)) +
  geom_col() +
  geom_text(aes(label=scales::comma(n)), hjust=0, nudge_y=2000) +
  scale_y_comma(limits=c(0,150000)) +
  coord_flip() +
  labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
       title="Seminal ggplot2 column chart example with commas",
       subtitle="A plot that is only useful for demonstration purposes, esp since you'd never\nreally want direct labels and axis labels",
       caption="Brought to you by the letter 'g'") + 
  theme_premium_rc(grid="X")
```

![](README_files/figure-gfm/ax3-1.png)<!-- -->

### Spellcheck ggplot2 labels

``` r
df <- data.frame(x=c(20, 25, 30), y=c(4, 4, 4), txt=c("One", "Two", "Three"))

ggplot(mtcars, aes(mpg, wt)) +
  geom_point() +
  labs(x="This is some txt", y="This is more text",
       title="Thisy is a titlle",
       subtitle="This is a subtitley",
       caption="This is a captien") +
  theme_premium_rc(grid="XY") -> gg

DGThemes::gg_check(gg)
```

    ## Possible misspelled words in [title]: (Thisy, titlle)

    ## Possible misspelled words in [subtitle]: (subtitley)

    ## Possible misspelled words in [caption]: (captien)

![](README_files/figure-gfm/sp-1.png)<!-- -->

### DGThemes Metrics

| Lang | \# Files |  (%) |  LoC |  (%) | Blank lines |  (%) | \# Lines |  (%) |
|:-----|---------:|-----:|-----:|-----:|------------:|-----:|---------:|-----:|
| R    |       27 | 0.41 | 1955 | 0.43 |         359 | 0.39 |     1200 | 0.44 |
| SVG  |        2 | 0.03 |  150 | 0.03 |           0 | 0.00 |        0 | 0.00 |
| Rmd  |        2 | 0.03 |  123 | 0.03 |          99 | 0.11 |      169 | 0.06 |
| YAML |        2 | 0.03 |   57 | 0.01 |           4 | 0.00 |        2 | 0.00 |
| SUM  |       33 | 0.50 | 2285 | 0.50 |         462 | 0.50 |     1371 | 0.50 |

clock Package Metrics for DGThemes

### Code of Conduct

Please note that this project is released with a Contributor Code of
Conduct. By participating in this project you agree to abide by its
terms.
