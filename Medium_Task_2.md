<!-- Headings  -->
# Document Connection
___
## Using SQLite Library
___
__SQLITE__ is a software library that provides a relational database management system.__SQLITE__ is a **C** language library that implements a **small**,**fast**,**self-contained**,**high-reliability**,**full-featured**,SQL database engine.SQLite is the **most used** database in the world.


SQLite is an embedded SQL database engine.Unlike most other SQL databases,SQL does not have a separate server process.While working with large data and information,the database required should be light and flexible in nature,here,comes SQLite database for these type of requirements.SQLite is capable of creating in-memory databases which are very fast to work with.

### Workflow of SQLite : -
```R Language
library(RSQLite) #Import the SQLite environment in R

mydb <- dbConnect(SQLite(), "test.db") #Creates database file test.db

mydf1 <- data.frame(ids=paste0("id", seq_along(iris[,1])), iris) #Loading two data frames from iris dataset

mydf2 <- mydf1[sample(seq_along(mydf1[,1]), 10),]

dbWriteTable(mydb, "mydf1", mydf1) #Writing data.frames into the table

dbWriteTable(mydb, "mydf2", mydf2)

dbListTables(mydb) #List names of table in the database

s1 < - dbGetQuery(mydb, 'SELECT * FROM mydf2') #Import table into data.frame

s2 < - dbGetQuery(mydb, 'SELECT * FROM mydf1 WHERE "Sepal.Length" < 4.6') #Querying the database

dbClearResult(s2) #Clear the result of last screen

```

## Using DBI

---
__DBI__ defines an interface for communication between R and relational database management sys-tems.   All  classes  in  this  package  are  virtual  and  need  to  be  extended  by  the  various  R/DBMSimplementations (so-calledDBI backends).
A DBI backend is an R package which imports theDBI and methods packages. 

DBI separates the connectivity to the DBMS into a “front-end” and a “back-end”. Applications use only the exposed front-end API. The back-end facilities that communicate with specific DBMSs (SQLite, MySQL, PostgreSQL, MonetDB, etc.) are provided by drivers (other packages) that get invoked automatically through S4 methods.

### Workflow of DBI : -
```R Language
install.packages("DBI")   #Installing the version oF DBI package

install.packages("odbc") #Installing the odbc package

library(odbc) #Importing the library after installing

library(DBI) #Importing the library after installing

con <- dbConnect(odbc::odbc(),
  .connection_string = "Driver={PostgreSQL Driver};Uid=postgres;Pwd=password;Host=localhost;Port=5432;Database=test_db;") #Connecting to a database

rstu <- dbConnect(odbc::odbc(), "PostgreSQL") # PostgreSQL here works as DSN stands for data source network to make it easier to connect to database

```




