
goodplacequotes_api <- function(path) {


  url <- httr::modify_url("https://good-place-quotes.herokuapp.com", path = path)

  ua <- httr::user_agent("https://github.com/adam-gruer/goodshirt")
  resp <- httr::GET(url,ua)

  if (httr::http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  if (httr::http_error(resp)) {
    stop(
      sprintf(
        "Good PLace Quotes API request failed [%s]\n",
        httr::status_code(resp)
      ),
      call. = FALSE
    )
  }

  structure(
    list(
      content = httr::content(resp),
      path = path,
      response = resp
    ),
    class = "goodplacequotes_api"
  )
}

print.goodplacequotes_api <- function(x, ...) {
  cat("<Good-Place-Quotes ", x$path, ">\n", sep = "")
  utils::str(x$content)
  invisible(x)
}





single_character <- function(character) {
  api_str <- paste0("/api/character/",character)
  content <- goodplacequotes_api(api_str)$content
  content <- sample(content, 1)[[1]]
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
  structure(goodplacequotes_api("/api/random")$content, class = "goodshirt")
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
  paste(c(x$quote, x$character), collapse = "\n~")
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



