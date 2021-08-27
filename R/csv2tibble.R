

library(dplyr)

csv_filenames <- fs::dir_ls(path = "inst/extdata/", glob = "*.csv")

openstat_raw <- purrr::map(csv_filenames, readr::read_csv)

openstat_tbl <- openstat_raw %>%
    tibble::enframe(name = "name", value = "content") %>%
    dplyr::mutate(name = stringr::str_remove(name, pattern = "inst/extdata/"))

# openstat_tbl %>%
#     dplyr::filter(stringr::str_detect(name, "그림자")) %>%
#     dplyr:pull(content) %>%
#     .[[1]]
#
# get_data <- function(pattern = "그림자") {
#     csv_data <- openstat_tbl %>%
#         dplyr::filter(stringr::str_detect(name, pattern)) %>%
#         dplyr::pull(content) %>%
#         .[[1]]
#
#     return(csv_data)
# }
#
# get_data("행성")
#
