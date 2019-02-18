goodplacequotes_api <- function(path) {


  url <- httr::modify_url("https://good-place-quotes.herokuapp.com", path = path)

  resp <- httr::GET(url)

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

print.goodshirt <- function(good_content){
  cat("\n",
      good_content$quote,
      "\n\n",
      paste("~", good_content$character)
      )
}



single_character <- function(character) {
  api_str <- paste0("/api/character/",character)
  content <- goodplacequotes_api(api_str)$content
  content <- sample(content, 1)[[1]]
  structure(content, class="goodshirt")

}

#' Get A Random Quote, Benches
#'
#' @return a list of class "goodshirt"
#' @export
#'
#' @examples
#' soul_squad()
soul_squad <- function() {
  structure(goodplacequotes_api("/api/random")$content, class = "goodshirt")
}


#' @describeIn soul_squad A random quote  from Chidi
chidi <- function(){
  single_character("chidi")
}

#' @describeIn soul_squad A random quote from Derek
derek <- function() {
  single_character("derek")
}

#' @describeIn soul_squad A random quote from Eleanor
eleanor <- function() {
  single_character("eleanor")
}

#' @describeIn soul_squad A random quote from Janet
janet <- function(){
  single_character("janet")
}

#' @describeIn soul_squad A random quote from Jason
jason <- function(){
  single_character("jason")
}

#' @describeIn soul_squad A random quote from Micahel
michael <- function(){
  single_character("michael")
}

#' @describeIn soul_squad A random quote from Pillboi
pillboi <- function(){
  single_character("pillboi")
}

#' @describeIn soul_squad A random quote from Tahani
tahani <- function() {
  single_character("tahani")
}



