
create database bd_revisao;
use bd_revisao;
#1 - Criar a tabela tb_departamento com codDepartamento int e pk e descricao varchar(100)
create table tb_departamento(
	codDepartamento int auto_increment,
    descricao varchar(100),
     primary key(codDepartamento)
);
select * from tb_departamento;

#2 - Alterar o tipo do campo da tb_departamento de varchar para char(200)
alter table tb_departamento
modify column descricao char(200);

#3 - Apagar a tb_departamento
drop table tb_departamento;

#4 - Suponha que a tb_editora possui os campos
#codEditora e descricao
#escreva o comando para inserir a editora com codEditora = 1 e descricao = 'Ceub'
insert into tb_editora(codEditora, descricao)
values	(1, 'Ceub'),
		(1, 'Ceub');
select * from tb_editora;

#5 - Escreva o comando para alterar a editora 'Ceub' para 'Thomnson'
update tb_editora set descricao = 'Thomson' where codEditora = 1;
select * from tb_editora;

#6 - Escreva o comando para remover a editora com codEditora = 3
delete from tb_editora where codEditora = 2;
select * from tb_editora;

#7 - Escreva o comando para diminuir o salário dos funcionários em 10% na tb_funcionario
update tb_funcionario set preco = preco * 0.9;
select * from tb_funcionario;

#8 - Escreva o comando para criar uma view que exibirá todas as pessoas que o nome começa com a letra 'a'
CREATE VIEW pessoas_com_a as 
SELECT * FROM tb_funcionario
WHERE nome LIKE 'p%';
select * from pessoas_com_a;

#9 - Escreva o comando para exibir a soma dos salários dos funcionários
select sum(preco) as preço from tb_funcionario;

#10 - Escreva o comando para exibir a quantidade de funcionários por departamento
select descricao, count(*)
from tb_funcionario f
inner join tb_departamento d on f.codDepartamento = d.codDepartamento;

#11 - Escreva o comando que deve ser executado para exibir o nome do funcionário e a descrição do cargo
select f.nome, c.descricao as cargo
from tb_fucionario g
inner join tb_cargo c on g.codCargo = c.codCargo;

#12 - Escreva o comando que deve ser executado para exibir o nome, decricao do cargo e a do departamento
select f.nome, c.descricao as cargo, d.descricao as departamento
from tb_funcionario f
inner join tb_cargo c on f.codcargo = c.codcargo
inner join tb_departamanento d on f.codDepartamento = d.codDepartamento;






















create table tb_cargo(
codcargo int auto_increment,
descricao varchar(30),
primary key(codcargo)
);

insert into tb_cargo(descricao)
values("vendedor"),("infermeiro"),("tecnico");
select * from tb_cargo;

update tb_funcionario set nome ="hugo pavanico" where codfuncionario = 4;