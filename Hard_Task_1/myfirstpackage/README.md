# Creating the Framework for your First Package

The first thing you want to do is create the framework for your R package. We can do this using devtools:

```R language
devtools::create("myfirstpackage")
```
This ends up creating a folder with the same name as your package name with 4 files inside the folder:

* DESCRIPTION: This is where all the meta-data about your package goes. Rather than try to explain the contents, I will refer you to Hadley’s detailed explanation on the contents of this file.
* myfirstpackage.Rproj: This is a RStudio specific file. As I do not use RStudio, I will not comment on this file as I never use it.
* NAMESPACE: In short, this file indicates what needs to be exposed to users for your R package. From my experience, I’ve never edited this file as devtools takes care of the changes as you’ll see below.
* R: This is where all your R code goes for your package.

You now have the bare bones of your first R package. First start by filling out the details in the DESCRIPTION file. When that is done, we can start adding some functions!

# How do I Add My R Functions?

All your R functions that you want in your R package belong in the R directory. You can create an .R file that has the same name as the function you want in it. For instance, let’s create a file called R/load_mat.R and add the following contents to the file:

```R language
searchFunction <- function(weight,gear) {
  query <- "SELECT *  FROM table1 WHERE  gear <= ? AND mpg = ?"
  return(dbGetPreparedQuery(connection, query, data.frame(weight,gear)))
}
```
This is a simple function that takes in a file and convert it into a matrix with the proper column and row names based on the format of the in file. You don’t need to have stick to the rule of one function is one .R file. Each .R file can have multiple functions in them. So:
```R language
searchFunction <- function(weight,gear) {
  query <- "SELECT *  FROM table1 WHERE  gear <= ? AND mpg = ?"
  return(dbGetPreparedQuery(connection, query, data.frame(weight,gear)))
}
searchFunction <- function(weight,gear) {
 ... 
}
```


Once you’ve got your documentation completed, you can simply run:

```R language
devtools::document()
```
