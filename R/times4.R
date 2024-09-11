#' Title Times number 4
#'
#' @param x A numeric value
#'
#' @return Output the input number multiplied by 4
#' @export
#'
#' @examples
#' times4(3)
#'

times4 <- function(x = 3) {
  # Check if input is a character string and extract numbers
  if (is.character(x)) {
    numbers <- as.numeric(stringr::str_extract_all(x, "\\d+")[[1]])

    # If no numbers are found, return NULL or a message
    if (length(numbers) == 0) {
      return("No numbers found in input")
    }

    # Multiply extracted numbers by 4
    result <- numbers * 4
  } else {
    # If input is numeric, multiply directly by 4
    result <- as.numeric(x) * 4
  }

  return(result)
}



