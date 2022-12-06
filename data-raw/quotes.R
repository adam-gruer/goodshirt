## code to prepare `quotes` dataset goes here

quotes <- jsonlite::fromJSON("data-raw/quotes.json")

usethis::use_data(quotes, overwrite = TRUE)
