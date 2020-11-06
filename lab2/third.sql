SELECT CASE
WHEN COUNT(DATE_PART('year', AGE(CURRENT_DATE, Н_ЛЮДИ.ДАТА_РОЖДЕНИЯ)) > 25)>0 THEN 'ДА.'
ELSE 'НЕТ.' END AS "Студенты старше 25" FROM Н_ЛЮДИ JOIN Н_УЧЕНИКИ ON Н_УЧЕНИКИ.ЧЛВК_ИД=Н_ЛЮДИ.ИД WHERE Н_УЧЕНИКИ.ГРУППА='3102';
