#criaçao do banco de dados
create database bd_rh_lucas;
#informar ao mysql o banco de trabalho
use bd_rh_lucas;
#criaçao da tabela tb_funcionario
create table TB_Funcionario (
	matricula int primary key,
    nome varchar(100),
	dtnacimento date,
    salario decimal(10,2),
    codCargo int,
    codDepartamento int
);
create table TB_Cargo (
	codCargo int primary key,
    nome varchar(100)
);
create table TB_Departamento(
	codDepartamento int primary key,
    departamento varchar(50)
);
#criar relacao TB_Funcionario - TB_cargo
alter table TB_Funcionario
add constraint fk_cargo
foreign key (codCargo) references TB_Cargo (codCargo);
#criar a relaçao TB_funcionario-TB_Departamento
alter table TB_Funcionario
add constraint fk_departamento
foreign key (CodDepartamento) references TB_Departamento(codDepartamento);