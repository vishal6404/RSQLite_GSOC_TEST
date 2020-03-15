library(RSQLite)
connection <- dbConnect(SQLite(), "survey.db")
dbListTables(connection)
dbWriteTable(connection, "table1", mtcars)
dbListTables(connection)
dbListFields(connection, "table1")
dbReadTable(connection,"table1")
searchFunction <- function(query,weight,gear) {
  
  return(dbGetPreparedQuery(connection, query, data.frame(weight,gear)))
}
query <- "SELECT *  FROM table1 WHERE  gear <= ? AND mpg = ?"
gear<- 4
weight<-21.0
a<-searchFunction(query,gear,weight)
print(a)

dbDisconnect(connection)

