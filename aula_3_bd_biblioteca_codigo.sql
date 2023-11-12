#criaçao do BD_livro_Lucas
create database Bd_livro_Lucas;

#selecionar o bd_livro_lucas para  execuçao
use bd_livro_lucas;

#criando a tabela tb_genero
create table tb_genero ( 
		codGenero int primary key,
        descricao varchar(100) not null
);
#criando a tabela tb_editora
create table tb_editora(
	codEditora int primary key,
	descricao varchar(100) not null
);
#criando a tabela tb_livro
create table tb_livro(
	ISBN int primary key,
    titulo varchar(100),
    preco decimal(10,2),
    codGenero int not null,
    codEditora int not null
);

#criar tabela de teste
create table tb_teste(
	codTeste int primary key,
    descricao varchar(50)
); 

#criaçao da chave estrangeira codGenero
alter table tb_livro
add constraint fk_genero
foreign key(codGenero) references tb_genero(codGenero);

#criaçao da chave estrangeira codEditora
alter table tb_livro
add constraint fk_editora
foreign key(codEditora) references tb_editora(codEditora);

#alterar a tb_livro para adicionar a coluna dataPublicacao
alter table tb_livro
add dataPublicacao date;

#alterar a tipo da dataPublicacao paraa datetime
alter table tb_livro
modify column dataPublicacao datetime;

#apagar a coluna datapublicacao da tabela tb_livro
alter table tb_livro
 drop column dataPublicacao;
 
 #mudar o nome do  campo titulo da tb_livro para <tituloLivro>
 alter table tb_livro
 change titulo tituloLivro varchar(100);
 #alterar novamente o nome da coluna para <titulo>
	alter table tb_livro
 change tituloLivro titulo varchar(100);
 
#apagar a tabela tb_teste
drop table tb_teste;