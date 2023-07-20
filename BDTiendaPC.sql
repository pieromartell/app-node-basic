drop database if exists BDTiendaPC;
create database BDTiendaPC;
use  BDTiendaPC;

create table Mouse(
	idmouse int primary key auto_increment,
    modelMouse varchar(30) not null ,
    brand varchar(30) not null,
    price double not null,
    state boolean not null
);

create table keyBoard(
	idkeyBoard int primary key auto_increment,
    modelKey varchar(30) not null,
    brand varchar(30) not null,
    price double not null,
    state boolean not null
);

create table PowerSource(
	idPower int primary key auto_increment,
    modelPower varchar(30) not null,
    brand varchar(30) not null,
    price double not null,
    state boolean not null
);

create table Parlant(
	idParlant int primary key auto_increment,
    modelPar varchar(30) not null,
    brand varchar(30) not null,
    price double not null,
    microphone boolean not null,
    state boolean not null
);

create table Procesador(
	idprocesador int primary key auto_increment,
    modelPro varchar(30) not null,
    price double not null,
    state boolean not null
);

create table Almacenamiento (
	idalmacen int primary key auto_increment,
    model_alma varchar(30) not null,
	type_alma varchar(30) not null,
    price double not null,
    state boolean not null
);

create table _CPU(
	idCPU int primary key auto_increment,
    idprocesador int not null,
    idalmacen int not null,
    price double not null,
    state boolean not null,
    foreign key (idprocesador) references Procesador(idprocesador),
    foreign key (idalmacen) references Almacenamiento(idalmacen)
);

create table Computadora(
	idComp int primary key auto_increment,
    idmouse int not null,
    idkeyBoard int not null,
    idPower int not null,
    idParlant int not null,
    idCPU int not null,
    price double not null,
    state boolean not null,
    foreign key (idmouse) references Mouse(idmouse),
    foreign key (idkeyBoard) references keyBoard(idkeyBoard),
    foreign key (idPower) references PowerSource(idPower),
    foreign key (idParlant) references Parlant(idParlant),
    foreign key (idCPU) references _CPU(idCPU)
);

INSERT INTO `bdtiendapc`.`mouse`
(`modelMouse`,
`brand`,
`price`,
`state`)
VALUES
('Mouse Gamer','LG','20.5',1);
INSERT INTO `bdtiendapc`.`keyboard`
(`modelKey`,
`brand`,
`price`,
`state`)
VALUES
('Antryx','LG',35.0,1);
INSERT INTO `bdtiendapc`.`parlant`
(`modelPar`,
`brand`,
`price`,
`microphone`,
`state`)
VALUES
('Bluutho','LG',50.0,1,1);
INSERT INTO `bdtiendapc`.`powersource`
(`modelPower`,
`brand`,
`price`,
`state`)
VALUES
('Forza','LG',35.3,1);
INSERT INTO `bdtiendapc`.`procesador`
(
`modelPro`,
`price`,
`state`)
VALUES
('Envidia',30.0,1);
INSERT INTO `bdtiendapc`.`almacenamiento`
(
`model_alma`,
`type_alma`,
`price`,
`state`)
VALUES
('Type-01','Disco Solido',30.5,1);
INSERT INTO `bdtiendapc`.`_cpu`
(
`idprocesador`,
`idalmacen`,
`price`,
`state`)
VALUES
(1,1,100,1);
INSERT INTO `bdtiendapc`.`computadora`
(
`idmouse`,
`idkeyBoard`,
`idPower`,
`idParlant`,
`idCPU`,
`price`,
`state`)
VALUES
(1,1,1,1,1,300,1);

select * from mouse;
select * from keyBoard;
select * from PowerSource;
select * from Parlant;
select * from Procesador;
select * from Almacenamiento;
select * from _CPU;
select * from Computadora






