Laboratory work 7
===

First task required to create diagram of relations for table *universitatea* but in my case, I created it previously. So, diagram for this database you can see on the third screen of this laboratory work.

Second task required to make some foreign keys for table *grupe* that will connect this table with tables *studenti* and *profesori* using columns *Sef_Grupa* and *Prof_Indrumator* respectively:

![2.1](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-2-1.png)

![2.2](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-2-2.png)

![2.3](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-2-3.png)

In the third task need to be created Primary Key for table *orarul* using columns *Ora*, *Auditoriu*, *Zi* and *Id_Grupa*:

![3.1](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-3-1.png)

![3.2](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-3-2.png)

In task nr. 4 user need to create two Foreign Keys for table Orarul: (*Zi*, *Ora*, *Id_Grupa*, *Id_Profesor*) and (*Zi*, *Ora*, *Id_Disciplina*, *Id_Grupa*):

![4.1](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-4-1.png)

![4.2](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-4-2.png)

For task nr. 5 was required to make connections between fields *Id_Grupa*, *Id_Disciplina* and *Id_Profesor* from table *orarul* and respective tables:

![5.1](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-5-1.png)

![5.2](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-5-2.png)

![5.3](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-5-3.png)

![5.4](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-5-4.png)

![5.5](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-5-5.png)

There appeared troubles with task nr. 6. It was required to make schemas for database *universitatea*:

*   *cadre_didactice* (data about all profesors and data connected with them);
*   *plan_studii* (all disciplines and data about them);
*   *studenti* (all data about students).

I created query that conform functionality would make those schemas, but it always shows error that there already are objects with written names of schemas. As you can see on screenshot, I made a check and there aren't any sign of those objects. I tried to implement different variants of this code, but no one worked. Also, implementation of next tasks requires implementation of this one.

![6.1](https://github.com/filpatterson/Laboratory-works-for-SQL/blob/master/Laboratory%20work%207/images/task-6-1.png)