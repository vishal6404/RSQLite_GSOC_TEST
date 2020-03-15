#' @export
searchFunction <- function(weight,gear) {
  query <- "SELECT *  FROM table1 WHERE  gear <= ? AND mpg = ?"
  return(dbGetPreparedQuery(connection, query, data.frame(weight,gear)))
}
