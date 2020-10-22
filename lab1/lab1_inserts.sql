insert into time(value) values 
	(-1000),
	(-500),
	(0),
	(500),
	(1000),
	(1500);
insert into ChemicalElem(name,weight,number) values 
	('C',12,123123),
	('O',16,321321),
	('H',1,444),
	('Au',197,888),
	('N',14,1488),
	('Fe',56,666);
insert into Pressure(value) values
	(100),
	(200),
	(300),
	(400),
	(500),
	(600),
	(2000);
insert into Location(name) values
	('paleolithic'),
	('paleozoic'),
	('neolithic'),
	('cenozoic'),
	('paleogene'),
	('neogene');
insert into Time_Location(idtime, idloc) values
	(1,1),
	(2,2),
	(3,3),
	(4,4),
	(5,5),
	(6,6);
insert into Move(idtime, idfrom, idto, process_name) values 
	(2,1,2,'paleozoic'),
	(3,2,3,'neolithic'),
	(4,3,4,'cenozoic'),
	(5,4,5,'paleogene'),
	(6,5,6,'neogene');
insert into Location_ChemElem(idloc, idhe) values
	(1,1),
	(1,2),
	(1,3),
	(1,4),
	(2,2),
	(2,3),
	(2,4),
	(3,5),
	(3,6),
	(4,2),
	(5,6),
	(6,6);
insert into ChemicalReaction(idhe,idpressure,idtime,name) values 
	(1,1,1,'pressing'),
	(2,2,2,'superpress'),
	(3,3,3,'superpuperpress');
insert into AgrigateState(idhe, name, density) values 
	(1,'gas',1488),
	(1,'solid',2000),
	(2,'gas',222),
	(2,'solid',300),
	(3,'gas',666),
	(4,'solid',100500),
	(5,'gas',20),
	(6,'solid',30);
insert into PresReact(idpressure,ids) values 
	(7,1),
	(4,2);
insert into AgrigateChanges(idfrom,idto) values 
	(1,2),
	(3,4);
