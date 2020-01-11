#' Test vocabulary
#'
#' Asks a single vocabulary question
#'
#' @export

test_vocab <- function() {
  set.seed(as.numeric(Sys.time()))

  # TODO: make sure vocab works when package is loaded

  choices_idx <- sample(nrow(vocab), 3)
  answer_idx <- sample(choices_idx, 1)
  q <- sprintf("What does %s mean?", vocab$test[answer_idx])
  answer <- utils::menu(vocab$reference[choices_idx], title = q)

  if(answer == which(choices_idx == answer_idx)) {
    return(cat(crayon::green("Congrats, you were correct!")))
  } else {
    sorry <- sprintf("Sorry, the %s means %s.",
                     vocab$test[answer_idx], vocab$reference[answer_idx])
    return(cat(crayon::cyan(sorry)))
  }
}
