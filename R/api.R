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

good_cat <- function(good_content){
  cat(good_content$quote,
      paste("\n~", good_content$character),
      fill = TRUE
      )
}

single_character <- function(character) {
  api_str <- paste0("/api/character/",character)
  content <- goodplacequotes_api(api_str)$content
  content <- sample(content, 1)[[1]]
  good_cat(content)

}

#' Get A Random Quote, Benches
#'
#' @return list of two character vectors : character and quote
#' @export
#'
#' @examples
#' soul_squad()
soul_squad <- function() {
  good_cat(goodplacequotes_api("/api/random")$content)
}
