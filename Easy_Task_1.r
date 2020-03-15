#task-1
#importing library for sqlite 

library(RSQLite)
library(DBI)
# Create an ephemeral in-memory RSQLite database
#setting up the connection
con <- dbConnect(RSQLite::SQLite(), "mydatabase.db")
dbListTables(con)

#creating a dataframe to insert the dummy values in the table

a<-data.frame(
  emp_id = c (1:5), 
  emp_name = c("Rick","Dan","Michelle","Ryan","Gary"),
  salary = c(623.3,515.2,611.0,729.0,843.25), 
  
  start_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",
                         "2015-03-27")),
  stringsAsFactors = FALSE
)

#inserting data into the table

dbWriteTable(con,"demo2",a)
dbListTables(con)

#printing the all attributes of the table

dbListFields(con,"demo2")

#printing the values stored in the table
dbReadTable(con, "demo2")

#printing the values stored in the table using SQL Query
result <- dbSendQuery(con, "SELECT * FROM demo2")
dbFetch(result)

dbClearResult(result)

#printing selected data from the table

result <- dbSendQuery(con, "SELECT * FROM demo2 WHERE salary > 700 ")
dbFetch(result)

# Clear the result
dbClearResult(result)

# Disconnect from the database
dbDisconnect(con)
