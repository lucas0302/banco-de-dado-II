#selecionar todos os registros da tabela  tb_livro
select * from tb_livro;
#esse codigo serve para usar o banco de dado 
use bd_livro_lucas;

#inserir o genero computacao e os outros dados na tb_genero
insert into tb_genero(codGenero,descricao)
values
	(4,'juridico'),
	(5,'Arquitetura'),
	(6,"Biologia"),
	(7,"Mecatronica");
select * from tb_genero;

#inserira editora Novatec e as outras editora na tb_editora
insert into tb_editora(codEditora,descricao)
values(2,'amazon'),
	(3,'coopmed'),
	(4,'Livraria florence'),
	(5,'blucher'),
	(6,'Mundial'),
	(7,'Saraiva'),
	(8,'Editora forum'),
	(9,'Dickens');
select * from tb_editora;

# iserir  os dados da tabela livro
insert into tb_livro(ISBN, titulo, preco, codGenero,codEditora)
value(1,'Banco de dados',120.50,1,1);
select * from tb_livro;

# iserir  os dados da tabela livro
insert into tb_livro(ISBN, titulo, preco, codGenero,codEditora)
values
	(2,'engenharia de software',350.00,1,1),
	(3,'ortopedia',310.00,2,3),
	(4,'cardiologia',320.00,2,4),
	(5,'estrutura pedrial',200.00,3,5),
	(6,'estrutura hidraulica',300.00,3,6),
	(7,'direito penal',150.00,4,7),
	(8,'dreito civil',200.00,4,8),
	(9,'cores',200.00,5,7),
	(10,'paisagismo',250.00,5,8),
	(11,'virus',300.00,6,9),
    (12,'bacteria',300.00,6,9);
select * from tb_livro;

#vamos selecionar colunas especificas
select ISBN,titulo from tb_livro;

#vamos selecionar apenas o livro com ISBN=1
select * from tb_livro where ISBN=1;

# modificando o valor da descricao=9 da tb_editora
update tb_editora
set descricao = 'thomson'
where codEditora = 9;

#atualizar o codEditora  para 1 e o codGenero para 2 onde o ISBN = 1
update tb_livro
set codGenero = 2,codEditora = 1
where ISBN = 1;
select * from tb_livro;

#apagando o dado da ISBN=9 na tb_livro
delete from tb_livro
where ISBN = 9;
select * from tb_livro;

#exercicio 1
#1
	select * from tb_editora  where codEditora= 1;
#2
	select * from tb_livro  where codGenero= 1;
#3
	delete from tb_editora where codEditora = 1;
#4
	delete from tb_livro where codGenero = 1;
  
#exercicio 2
#1 mudar o preco de um livro determinado
	update tb_livro
	set preco = 400.00 where  ISBN = 1;
	select * from tb_livro;
#2 dar um almento de 10% no livro
	update tb_livro 
	set  preco = preco *1.1;
	select * from tb_livro;
#3 mostrar os preco  maior que 350 tb-livro
select * from tb_livro
 where preco > 350;

#4 mostrar os livro com codigo 8
select * from tb_livro
 where codEditora = 8;




