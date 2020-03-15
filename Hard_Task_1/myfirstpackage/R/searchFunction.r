#@export tag above your function to indicate this function to be “exposed” to users to use.
#The #' @export syntax is actually an Roxygen tag.

#' @export
searchFunction <- function(weight,gear) {
  query <- "SELECT *  FROM table1 WHERE  gear <= ? AND mpg = ?"
  return(dbGetPreparedQuery(connection, query, data.frame(weight,gear)))
}
