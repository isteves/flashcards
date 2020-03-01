
<!-- README.md is generated from README.Rmd. Please edit that file -->

# flashcards

<!-- badges: start -->

<!-- badges: end -->

The goal of flashcards is to bring some Hebrew into my daily R work. All
these words are gathered on the job, so they tend to be related to data
science / fraud / e-commerce / programming.

## Installation

You can install the development version of `flashcards` from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("isteves/flashcards")
```

## Example

The package comes with a single function:

``` r
library(flashcards)
test_vocab()
```

It prompts you for the definition of a vocab word and gives three
choices to choose from. For example, like this:

    What does מדבג mean? 
    
    1: to separate
    2: indication
    3: debug
    
    Selection: <enter your selection>

To be prompted with a vocab word every time you restart R, use
`usethis::edit_r_profile()` to open your .Rprofile file for editing and
add the following line:

``` r
if(interactive()) {
  setHook("rstudio.sessionInit", function(...) {
    flashcards::test_vocab()
  })
}
```

The setHook command is needed because the `utils::menu()` function
within `test_vocab()` interrupts the RStudio set-up processes. (Thanks
to Kevin Ushey for the solution…more details on [RStudio
Community](https://community.rstudio.com/t/view-error-when-utils-menu-is-run-in-rprofile/53646/2).)

## Customizing the package

Want to test yourself on your own vocabulary? For the time being, the
easiest way is the following:

1.  Clone the repo
2.  Replace `data-raw/vocab.tsv` with a tsv file of your choice. It
    should contain two columns with the following names: `test` (the
    word that is new to you) and `reference` (the definition)
3.  Run the `vocab.R` script (edit if needed)
4.  Run `devtools::install()` (or press “Install and Restart” in the
    Build pane in RStudio) to install the package locally
