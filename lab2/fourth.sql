 SELECT FOO.ПЛАН_ИД FROM (SELECT COUNT(Н_ГРУППЫ_ПЛАНОВ.ПЛАН_ИД) AS КОЛ_ВО, Н_ГРУППЫ_ПЛАНОВ.ПЛАН_ИД FROM Н_ГРУППЫ_ПЛАНОВ JOIN Н_ПЛАНЫ ON Н_ПЛАНЫ.ИД = Н_ГРУППЫ_ПЛАНОВ.ПЛАН_ИД JOIN Н_ОТДЕЛЫ ON Н_ОТДЕЛЫ.ОТД_ИД = Н_ПЛАНЫ.ОТД_ИД WHERE Н_ОТДЕЛЫ.КОРОТКОЕ_ИМЯ='ВТ' GROUP BY Н_ГРУППЫ_ПЛАНОВ.ПЛАН_ИД) AS FOO WHERE FOO.КОЛ_ВО>2;
