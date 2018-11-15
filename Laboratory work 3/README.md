# Laboratory work 3 for SQL

Laboratory work 3
===

Task of this laboratory work was to create a database named *university*, where will be created 5 tables, which will have primary keys and 4 tables must be connected to the main table, which will contain general data about students and their program of studies (this connnection must be seen from diagram that must be created by user).

So, we have list of 5 tables:
*   *discipline* (data about all lectures in univeristy);
*   *grupe* (groups of students);
*   *profesori* (list of professors in university);
*   *studenti* (list of students in university);
*   *studenti_reusita* (final table, that contains data about student, his/her mark for each discipline and some additional data, conform requirements from task, where all data that intersects with data from previous tables must be connected to other tables in this database).

First of all, was created database *university* and after this was created table *discipline*:

![Table of disciplines](https://github.com/filpatterson/Laboratory-work-nr.-3/blob/master/images/TableOfDisciplines.PNG)

Table was successfully created and saved. After this was created table of groups in university *grupe*:

![Table of groups](https://github.com/filpatterson/Laboratory-work-nr.-3/blob/master/images/TableOfGroups.PNG)

Then was created table of professors *profesori*:

![Table of professors](https://github.com/filpatterson/Laboratory-work-nr.-3/blob/master/images/TableOfProfesors.PNG)

Table of students *studenti*:

![Table of students](https://github.com/filpatterson/Laboratory-work-nr.-3/blob/master/images/TableOfStudents.PNG)

General table that contains data from other tables *studenti_reusita*: 

![Table of general data](https://github.com/filpatterson/Laboratory-work-nr.-3/blob/master/images/TableOfStudentsReus.PNG)

For connection of data in those tables was used diagram, where were connected all fields with primary keys from all tables:

![Diagram](https://github.com/filpatterson/Laboratory-work-nr.-3/blob/master/images/GeneralViewOfDiagram.PNG)

From the left can be seen that all tables and diagram were successfully saved in this database:

![Branch of files](https://github.com/filpatterson/Laboratory-work-nr.-3/blob/master/images/BranchOfTablesInDB.PNG)