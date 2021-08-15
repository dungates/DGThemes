#' Personalized gt theme
#'
#' A custom theme for tables generated with [gt::gt].
#'
#' @param data A `gt_tbl` object, generated from [gt::gt].
#' @param bg_color The background color of the table cells.
#' @param all_caps Whether or not to capitalize titles
#' @param ... Additional arguments passed to [gt::tab_options].
#'
#' @return An object of class `gt_tbl`.
#' @importFrom dplyr %>%
#' @import gt
#' @examples
#' mtcars %>% head() %>% gt::gt() %>% DGThemes::gt_theme_duncan()
#' @export
gt_theme_duncan <- function(data, bg_color = "#FFFFFF", all_caps = F, ...) {
  data %>%
    gt::opt_all_caps(all_caps = all_caps) %>%
    gt::opt_table_font(font = list(gt::google_font("Open Sans"),
                                   gt::default_fonts())) %>%
    # Set Table Text Size
    gt::tab_style(
      style = list(
        gt::cell_text(
          size = "medium",
          align = "center"
        )
      ),
      locations = gt::cells_body(
        columns = everything(),
        rows = everything()
      )
    ) %>%
    # Adjust title font
    tab_style(
      style = list(
        cell_text(
          font = "Fira Sans",
          weight = "bold",
          size = "x-large",
          align = "center"
        )
      ),
      locations = list(
        cells_title(groups = "title")
      )
    ) %>%
    # Adjust sub-title font
    tab_style(
      style = list(
        cell_text(
          font = "Fira Sans",
          weight = "lighter",
          size = "large",
          align = "center"
        )
      ),
      locations = list(
        cells_title(groups = "subtitle")
      )
    ) %>%
    # Set default to center align everything
    gt::cols_align(align = "center") %>%
    gt::tab_options(column_labels.background.color = bg_color,
                    column_labels.border.top.width = gt::px(4),
                    column_labels.border.top.color = "black",
                    column_labels.font.weight = "bold",
                    table.border.top.width = gt::px(5),
                    table.border.top.color = "black",
                    table.border.bottom.width = gt::px(5),
                    table.border.bottom.color = "black",
                    table.border.left.color = "black",
                    table.border.left.width = px(3),
                    table.border.left.style = "solid",
                    table.border.right.color = "black",
                    table.border.right.width = px(3),
                    table.border.right.style = "solid",
                    table.font.size = 16,
                    heading.background.color = bg_color,
                    source_notes.padding = gt::px(10),
                    source_notes.border.lr.width = gt::px(0),
                    source_notes.font.size = 12,
                    source_notes.background.color = bg_color,
                    table.background.color = bg_color,
                    data_row.padding = px(3),
                    ...)
}