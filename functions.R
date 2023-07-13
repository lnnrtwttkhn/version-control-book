
ref_table <- function(bibtexkeys) {
  suppressWarnings(library(bib2df))
  library(magrittr)
  library(data.table)
  path_bib <- here::here("references.bib")
  df_bib <- bib2df(path_bib)
  df_bib_out <- df_bib %>%
    setDT(.) %>%
    .[BIBTEXKEY %in% bibtexkeys] %>%
    .[, c("AUTHOR", "TITLE", "NOTE", "URL")] %>%
    .[, num_authors := sapply(AUTHOR, length)] %>%
    .[, AUTHOR := sapply(AUTHOR, "[[", 1)] %>%
    .[num_authors > 1, AUTHOR := paste(AUTHOR, "et al.")] %>%
    .[, URL := sprintf("[{{< fa brands internet-explorer >}}](%s)", URL)] %>%
    setnames(., old = c("AUTHOR", "TITLE", "URL", "NOTE"), new = c("Authors", "Title", "Link", "Note")) %>%
    .[, c("Authors", "Title", "Link", "Note")]
  return(df_bib_out)
}

table_cheatsheet <- function(name = "all") {
  library("here")
  library("magrittr")
  library("jsonlite")
  json_data <- jsonlite::fromJSON(txt = here::here("cheatsheet.json"))
  df <- json_data %>%
    dplyr::bind_rows(.id = "Chapter") %>%
    tidyr::pivot_longer(cols = -c("Chapter"), names_to = "Command", values_to = "Description") %>%
    transform(Command = sprintf("`%s`", Command)) %>%
    na.omit(.)
  if (name != "all") {
    df <- df %>%
      subset(., Chapter == name) %>%
      subset(., select = c(Command, Description))
  }
  return(df)
}


