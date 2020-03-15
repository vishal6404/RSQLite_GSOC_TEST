#importing library for sqlite
library(RSQLite)

#setting up the connection
connection <- dbConnect(SQLite(), "survey.db")

#printing the lists of table in the database
dbListTables(connection)

#creating a new table
dbWriteTable(connection, "table1", mtcars)

#showing the attributes of the table
dbListFields(connection, "table1")

#printing the whole table
dbReadTable(connection,"table1")

#it is our search function that takes input for the query 
searchFunction <- function(weight,gear) {
  #its our query which will display the data according to the inputs 
  
  query <- "SELECT *  FROM table1 WHERE  gear <= ? AND mpg = ?"
  return(dbGetPreparedQuery(connection, query, data.frame(weight,gear)))
}

gear<- 4
weight<-21.0
#function call
a<-searchFunction(gear,weight)
print(a)

#closing the connection
dbDisconnect(connection)

