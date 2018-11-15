# Laboratory work 2 for SQL

Laboratory work 2
===

Task of this laboratory work was to create two databases with different properties and create two maintenance plans for each of those databases with different operations.

For better understanding of this text file will be divided into parts, where each part corresponds to the each task of laboratory work.

Task 1
---

First, I created a path *SQL/MyDocuments* for creating there all sub-folders for setting there all files that was required to create (*Data*, *Logs*, *SQL_reports*)

All files for database from first task I stored at *Data* folder, with setting all required properties of those files (minimal size of file and its maximal value). Also, I created a filegroup for secondary files and named it *FileGroup*

Database from this task is named *DB lab1(ex1)*

Task 2
---

Here I created second database with two files that are stored in sub-folder *Logs*, creating *log* file that had name *journal*, which differs from physical name of this file. Also, by changing properties of this database, I provided access only for one user at moment.

Database from this task is named *DB lab1(ex2)*

Task 3
---

First of all, was launched *Agent SQl Server* and after this, in *Control* folder was chosen *Maintenance plan*, from which I launched *Maintenance plan wizard*.

Using this wizard, I set time of making *shrink of memory* operation for every friday at 2:00:00 (limit for shrinking was set as 2000 mb and percentage of eliberation was set as 10%). This plan was successfully created, but any try of running this plan ended with error (all reports about runnning those plans were sent to *SQL_reports* sub-folder).

The error report is showing that there is a problem with getting *size* property. Search of this information via Google  gave me next results:

http://www.sql.ru/forum/1187675/oshibka-svoystvo-size-nedostupno-dlya-sleduushhego-obekta - here was written something about "trace"

http://jamessql.blogspot.com/2014/01/error-property-size-is-not-available.html - the same glitch

http://www.sql.ru/forum/1082564/strannoe-povedenie-tempdb?mid=18395932#18395932 - another case of this problem.

From those sources I found out that the only way to solve such a problem can be in creation of all databases and maintenance plans manually via SQL console.

From the other side, tests of all another options for maintenance plan (like *check of integrity of database*) gave me successful result.

Task 4
---

Here I repeated the same actions as for previous task, but with choosing three options to make at every first Sunday of month: rebuilding indexes, with check of tables only (and 10% of free space), getting statistics and deleting history of operations over this server after each 6 weeks.

Plan was created successfully with successful run of this plan.

Laboratory work 3 (old version)
===

Here task was very simple: it was needed to create 4 tables inside new database *calculatoare* conform tables that were described in a book.

First, I created this database and after this, by finding *tables* folder inside database and choosing option of creating new table.

Inside appeared window I wrote names of columns of this table and type of data, which will be stored in this column. Also, for every column I set off ability of NULL value (in first table I also chose column *model* as primary key).

All the others tables were created inside this database using the same steps.

After creation of tables, each table must be filled with data, conform view that was presented in the book. For this I found in this database files with table and for each was chosen *modify first 200 rows* option. Inside each table was inserted data conform task, which can be seen using SSMS.

UPD: I completed here old version of laboratory work nr. 3. The new version of laboratory work will uploaded in new repository "Laboratory work nr. 3".