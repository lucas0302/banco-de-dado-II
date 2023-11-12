create database trabalho;
use trabalho;
#crianto a tb_departamento
create table tb_departamento(
	codDepartamento int,
	descricao varchar(100),
	primary key (codDepartamento)
);
insert into tb_departamento(codDepartamento,descricao)
	values
		(1,"adiministração"),
        (2,"farmacologia"),
        (3,"finacia"),
        (4,"tecnologia");
select * from tb_departamento;

#crianto a tb_cargo      
create table tb_cargo(
	codCargo int,
	descricao varchar(100),
	primary key (codCargo)
	);
insert into tb_cargo(codCargo,descricao)
	values
		(12,"junior"),
        (23,"senior"),
        (34,"pleno"),
        (45,"estagiario");
select * from tb_cargo;
	
#crianto a tb_funcionario
create table tb_funcionario(
	matricula int,
	nome varchar(100),
	dtnacimento varchar(30),
	salario decimal(10,2),
	cd_departamento int,
	cd_cargo int,
	constraint fk_cargo foreign key (cd_departamento) references tb_departamento(codDepartamento),
	constraint fk_departamento foreign key (cd_cargo) references tb_cargo(codCargo),
	primary key (matricula)
);

insert into tb_funcionario(matricula,nome,dtnacimento,salario)
	values
		(15,"ana","06-11-2007",1300),
        (23,"joao","08-24-2008",1000),
        (34,"pedro","02-22-2009",12000),
        (45,"lucas","03-14-2005",30000),
        (41,"victor","08-19-2001",10000),
        (43,"antonio","08-19-2001",20000);
select * from tb_funcionario;

select tb_funcionario.nome as Nome,tb_cargo.descricao as Cargo 
from tb_funcionario
inner join tb_cargo  on tb_funcionario.matricula = tb_cargo.codCargo where tb_funcionario.salario >= (select avg(salario) FROM tb_funcionario);
        
        