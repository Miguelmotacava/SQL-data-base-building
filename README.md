# SQL-data-base-building

The main goal of this project is to crete a database from a .CSV files, which are given. These files contain information about a videoclub company (p.e. films which the company owns, actors who participated in each film, dates of the rental process, ...). After the creation of this database, using python and SQL, it is alse required to write some queries to show some information of the database. These queries will be explain later.


The project was decided to be divided in three parts:

1) Cleaning of the dataset
2) Structure of the database
3) Creation of the queries

The first stage of the process is the cleaning of the six initial .CSV files. In order to do that we should open the files in python and look into each of them, due to this will allow us to get a general idea of what data are we going to work with. After that, we start deciding if the columns of each dataframe contain important information or not. The truth is that there are many id's ( stores, customers, ...) which are not linked with other columns from the same dataframe or others datafframes. Although these columns do not give us relevant information currently, if in the future more data is taking in consideration, these id's coulb play an important role, so it was decided to keep them in the database. Then, we begin to clean the 6 dataframes (grouping some data in oder to have less columns, changing the type of the data, dropping duplicates rows, modifying some dataframes, etc ...). The new cleaned dataframes are created and savedwhen the limpieza.ipynb is ejecuted  in the data folder. Subsequently, we import these new dataframes to SQL, where we are going to start the second phase of the project. 

In SQL we are going to structure the data we have. To do that we should stablish the relationship between the entities (the dataframes) add primary and foreign keys to some columns. The final structure we have it is the following:

![Captura de pantalla (108)](https://user-images.githubusercontent.com/109019847/187068921-a7b3bc96-f3ed-47f5-aaf0-3ae9649829cd.png)


As we see in the figure, on  one hand, the connections between tables are represented with lines (which changes in function of the type of the relationship: 1:1, 1:m, m:m, ...). On the other hand, we have that each column has a symbol that represents if it is a primnary key (yellow) , a foreign key (red) or just a normal type of data (blue).

Finally, when we have structured the databse, we are ready to write the queries! These are consultations that allow us to see the information that our database cointains. The queries we have wrote are in the SQL folder, with the querie that add the keys. The objetives of our queries are:


  a) the nº of films that each actor have made

  b) categories of each film (to see if any movie has several categories)

  c) how many animated movies are?

  d) the 5 genres with more movies

  e) actor than participate in each film
