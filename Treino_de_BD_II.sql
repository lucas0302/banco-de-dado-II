use bd_lucas;
# 5 Como criar uma tabela 
CREATE TABLE tb_teste(
id_cod int primary key,
nome varchar(30),
estado varchar(30)
);
create table tb_Aluno(
matricula int primary key,
nome varchar(50) Not null,
turma varchar(4)
);
select * from tb_Aluno;

# 6 como mostrar a tabela
select * from tb_teste;

# 6 mudar o tipo de uma campo 
 alter table tb_teste 
 modify column nome char(11);

# 7 comando para inserir os valores
 insert into tb_teste(id_cod,nome,estado)
 values
 (724234,"Lucas","Goias"),
 (323133,"Marcos","Minas Gerais"),
 (123125,"Julia","Mato grosso"),
 (54355,"Maria","Rio de Janeiro");
 
 # 8 selecionar um valor especifico da tabela 
 select * from tb_teste where id_cod = 323133;
 
 # 9 atualizar um valor da tabela 
 update tb_teste set id_cod = 1 where id_cod = 724234;
 select * from tb_teste;
 
 # 10 remover um registro da tabela 
 delete from tb_teste where estado = "Mato grosso";
  select * from tb_teste;
 
