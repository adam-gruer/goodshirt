

get_random_quote <- function(quotes){
  i <- sample(nrow(quotes), 1)
  quotes[i, ]
}

single_character <- function(character) {

  character_quotes <- quotes[tolower(quotes$character) == character, ]

  content <- get_random_quote(character_quotes)
  structure(content, class="goodshirt")

}

#' Get A Random Quote, Benches
#'
#' @return a list of class "goodshirt" with 2 elements: character and quote
#' @export
#'
#' @describeIn soul_squad A random quote from a random member of the soul_squad
#' @examples
#' soul_squad()
soul_squad <- function() {

  content <- get_random_quote(quotes)
  structure(content, class = "goodshirt")
}

#' @export
print.goodshirt <- function(x, ...){
  cat("\n",
      x$quote,
      "\n\n",
      paste("~", x$character)
  )
}


#' @export
as.character.goodshirt <- function(x, ...){
  paste(c(x$quote, x$character), collapse = "\n~ ")
}

#' @export
#' @describeIn soul_squad A random quote  from Chidi
chidi <- function(){
  single_character("chidi")
}

#' @export
#' @describeIn soul_squad A random quote from Derek
derek <- function() {
  single_character("derek")
}

#' @export
#' @describeIn soul_squad A random quote from Eleanor
eleanor <- function() {
  single_character("eleanor")
}

#' @export
#' @describeIn soul_squad A random quote from Janet
janet <- function(){
  single_character("janet")
}

#' @export
#' @describeIn soul_squad A random quote from Jason
jason <- function(){
  single_character("jason")
}

#' @export
#' @describeIn soul_squad A random quote from Michael
michael <- function(){
  single_character("michael")
}

#' @export
#' @describeIn soul_squad A random quote from Pillboi
pillboi <- function(){
  single_character("pillboi")
}

#' @export
#' @describeIn soul_squad A random quote from Tahani
tahani <- function() {
  single_character("tahani")
}



