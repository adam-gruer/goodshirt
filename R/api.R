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

#' Get A Random Quote, Benches
#'
#' @return list of two character vectors : character and quote
#' @export
#'
#' @examples
#' soul_squad()
soul_squad <- function() {
  goodplacequotes_api("/api/random")$content
}
