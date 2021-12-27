CREATE TABLE Team (
    tid int,
    nickname varchar(20),
    color varchar(10), 
	primary key (tid)
);


CREATE TABLE Player (
    pid int,
    pname varchar(20),
    address varchar(30),
	phone numeric(10,0),
	rating int,
	tid int,
	primary key (pid)


);


CREATE TABLE Coach (
    cid int,
    cname varchar(20),
    address varchar(30),
	status numeric(10,0),
	rating int,
	tid int,
	primary key (cid)



);


CREATE TABLE Game (
	gdate date,
	htid int,
	vtid int,
	hscore int,
	vscore int,
	primary key (gdate,htid)
	

);

CREATE TABLE Points (
	pid int,
	gdate date,
	htid int,
	pscore int,
	primary key (pid,gdate,htid),
	foreign key (pid) references Player (pid) , 
	foreign key (gdate, htid) references Game (gdate,htid)



);

