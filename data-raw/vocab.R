## code to prepare `vocab` dataset goes here

vocab <- readr::read_csv("data-raw/vocab.csv")
usethis::use_data(vocab, internal = TRUE, overwrite = TRUE)
# https://coolbutuseless.github.io/2018/12/10/r-packages-internal-and-external-data/
