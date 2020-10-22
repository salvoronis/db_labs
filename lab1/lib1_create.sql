create table Time(
	idtime serial primary key,
	value integer
);
create table ChemicalElem(
	idhe serial primary key,
	name varchar(20),
	weight integer,
	number integer
);
create table Location(
	idloc serial primary key,
	name varchar(20)
);
create table Time_Location(
	idtime integer references Time(idtime) on delete cascade,
	idloc integer references Location(idloc) on delete cascade
);
create table Move(
	idtime integer references Time(idtime) on delete cascade,
	idfrom integer references Location(idloc) on delete cascade,
	idto integer references Location(idloc) on delete cascade,
	process_name varchar(20) not NULL
);
create table Location_ChemElem(
	idloc integer references Location(idloc) on delete cascade,
	idhe integer references ChemicalElem(idhe) on delete cascade
);
create table Pressure(
	idpressure serial primary key,
	value integer
);
create table ChemicalReaction(
	idhr serial primary key,
	idhe integer references ChemicalElem(idhe) on delete cascade,
	idpressure integer references Pressure(idpressure) on delete cascade,
	idtime integer references Time(idtime) on delete cascade,
	name varchar(20) not null
);
create table AgrigateState(
	ids serial primary key,
	idhe integer references ChemicalElem(idhe) on delete cascade,
	name varchar(20),
	density integer
);
create table AgrigateChanges(
	idfrom integer references AgrigateState(ids) on delete cascade,
	idto integer references AgrigateState(ids) on delete cascade
);
create table PresReact(
	idpressure integer references Pressure(idpressure) on delete cascade,
	ids integer references AgrigateState(ids) on delete cascade
);
