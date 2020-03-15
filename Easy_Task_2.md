# RSQLiteAdmin_GSOC2020
___
 The RSQLite package provides an easy to use interface to create, manage and query SQLite databases directly from R. The responsibilities of database management system are as follows:
<!-- OL-->

1.Creating the Databases.

2.Managing the access of the database.

3.Running sql queries.

4.Writing data into the database.

5.Modifying the database.

6.Deleting data from database.

## Why SQLite is preferred over other DB's?
___
__Unique features__ :

SQLite is an Embeddable Relational Database Management System which is written in ANSI-C.SQLite is a self-contained, file-based, and fully open-source RDBMS known for its portability, reliability, and strong performance even in low-memory environments. Its transactions are ACID-compliant, even in cases where the system crashes or undergoes a power outage. 

SQLite is a self-contained, file-based, and fully open-source RDBMS known for its portability, reliability, and strong performance even in low-memory environments. Its transactions are ACID-compliant, even in cases where the system crashes or undergoes a power outage. 

__Advantages of SQLite__ :
<!-- UL -->

* __Small footprint__: As its name implies, the SQLite library is very lightweight. Although the space it uses varies depending on the system where it’s installed, it can take up less than 600KiB of space. Additionally, it’s fully self-contained, meaning there aren’t any external dependencies you have to install on your system for SQLite to work.
* __User-friendly__ :SQLite is sometimes described as a “zero-configuration” database that’s ready for use out of the box. SQLite doesn’t run as a server process, which means that it never needs to be stopped, started, or restarted and doesn’t come with any configuration files that need to be managed. 
* __Portable__ :Unlike other database management systems, which typically store data as a large batch of separate files, an entire SQLite database is stored in a single file. This file can be located anywhere in a directory hierarchy, and can be shared via removable media or file transfer protocol.

## Why MySQL is used for?
___
MySQL is an open-source, fast reliable, and flexible relational database management system, typically used with PHP. It is a database management system used for web-based software applications. It supports standard SQL(Structures Query Language) and it is free to use and download. It is written in C,C++.Some of the most popular websites like Facebook,Youtube,Wikipedia uses MySQL for it's uses.

__Advantages of MySQL__ :
<!-- UL -->

* __Popularity and ease of use__ : As one of the world’s most popular database systems, there’s no shortage of database administrators who have experience working with MySQL.Likewise, there’s an abundance of documentation in print and online on how to install and manage a MySQL database, as well as a number of third-party tools — such as phpMyAdmin — that aim to simplify the process of getting started with the database.

* __Security__ : MySQL comes installed with a script that helps you to improve the security of your database by setting the installation’s password security level, defining a password for the __root__ user, removing anonymous accounts, and removing test databases that are, by default, accessible to all users.

* __Replication__: MySQL supports a number of different types of replication, which is the practice of sharing information across two or more hosts to help improve reliability, availability, and fault-tolerance.

* __Speed__: MySQL supports a number of different types of replication, which is the practice of sharing information across two or more hosts to help improve reliability, availability, and fault-tolerance.

## Why PostgreSQL is used?
___
PostgreSQL, also known as Postgres, bills itself as “the most advanced open-source relational database in the world.” PostgreSQL is an object-relational database, meaning that although it’s primarily a relational database it also includes features — like table inheritance and function overloading — that are more often associated with object databases.

PostgreSQL isn’t as widely used as MySQL, but there are still a number of third-party tools and libraries designed to simplify working with with PostgreSQL, including pgAdmin and Postbird.

__Advantages of PostgreSQL__
<!-- UL -->

* __SQL compliance__ : According to the official PostgreSQL documentation, PostgreSQL supports 160 out of the 179 features required for full core SQL:2011 compliance, in addition to a long list of optional features.
* __Open-source and community-driven__ :A fully open-source project, PostgreSQL’s source code is developed by a large and devoted community.Similarly, the Postgres community maintains and contributes to numerous online resources that describe how to work with the DBMS, including the official documentation, the PostgreSQL wiki, and various online forums.
* __Extensible__ :Users can extend PostgreSQL programmatically and on the fly through its catalog-driven operation and its use of dynamic loading. One can designate an object code file, such as a shared library, and PostgreSQL will load it as necessary. 

## Conclusion 
Users can extend PostgreSQL programmatically and on the fly through its catalog-driven operation and its use of dynamic loading. One can designate an object code file, such as a shared library, and PostgreSQL will load it as necessary. There are a quite a few variables at play when deciding on an RDBMS, and the choice is rarely as simple as picking the fastest one or the one with the most features.
