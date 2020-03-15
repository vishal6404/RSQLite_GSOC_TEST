# 

# RSQLite_GSOC_TEST
A database management system that interacts with database. It facilitates several  operation over the database it manages.

A few operation which are as follows--

  1. Managing the access of database.
  2. Running Sql queries.
  3. Writing data into the database.
  4. Updating database.
  5. Deleting data from database.
  
### SQLite     

#### Overview and features
SQLite is an embedded, file-based RDBMS that does not require any installation or setup. This, in turn, means that the application does not run under a separate server process that needs to be started, stopped, or configured. This serverless architecture enables the database to be cross-platform compatible.

The complete SQL database is contained within a single disk file and all reads and writes take place directly on this disk file. As the data is directly written back to the disk file, SQLite adheres to the ACID properties to safeguard transactions against memory allocation failures and disk I/O errors that can result from unexpected system crashes or power failures.

#### Advantages and use cases
 The SQLite library is one of the most compact libraries in this list where the size of the library can easily be under 600 KB. Due to its very small footprint and the nature of the RDBMS, it is a very good fit for IoT and embedded devices.
 
 One major advantage of SQLite is how it can act as a complementary solution for client/server enterprise RDBMS. For example, it can cache data from client/server RDBMS locally and thereby reduce the latency for queries and keep the end application alive in case of enterprise RDBMS outages.
 
 ### MySQL
 
 #### Overview and features
 
 MySQL is one of the most popular open-source and large-scale RDBMS systems out there. Unlike SQLite, it employs a server/client architecture that consists of a multi-threaded SQL server. This multi-threaded nature of MySQL allows for greater performance as the kernel threads can easily utilize multiple CPUs. The database is written in C and C++ and supports various platforms like Windows Server Operating Systems and Linux distros like RHEL 7 and Ubuntu. It also adheres to the ACID system for transaction consistency and provides various Connectors and APIs like C, C++, Java, PHP, etc.
 
 #### Advantages and use cases
 
 Apart from having several enterprise features, another major differentiation between MySQL and SQLite is MySQL’s support for multi-user features. This, along with the enterprise features and scalability, makes it a perfect candidate for distributed applications.
 
 MySQL holds an edge over PostgreSQL for simple read-heavy operations when it comes to throughput and performance. It is also much simpler to install and use and has a broader community compared to PostgreSQL.
 
 ## Why SQLite ?

SQLite is a serverless solution that’s self-contained, highly reliable, and full of features. As a self-contained SQL database engine, it can handle all sorts of data in a relatively simple manner. This is because it integrates directly with the application instead of having to install it somewhere and then have it connect with your app.

Pros:

1. Serverless which means it is simple to set up and zero configuration is required
2. File-based system makes it very portable
3. Great for development and testing

Cons:

1. Doesn’t provide network access (i.e. accessing it from another machine) as it is serverless
2. Not built for large-scale applications
3. No user management

 
 
 #### Advantages and use cases
 
 Because of its superior parallel processing capability, PostgreSQL comes out on top (compared to MySQL) when running long SELECTs like in analytical applications. PostgreSQL has always been considered the best for analytical processes such as data warehousing. A prime example is Timescale DB, which can allow you to INSERT 1 million records per second. Its use case also includes OLTP applications and applications in the financial industry due to strong adherence to ACID compliance. The extensibility of the PostgreSQL database also makes it a perfect candidate for research and scientific projects.
 
 
