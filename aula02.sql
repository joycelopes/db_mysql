-- comentario criar banco de dados quitanda
create database db_quitanda;

-- use linka a tabela no banco criado 
use db_quitanda; 

-- criar tabela de produtos 
create table tb_produtos(
id bigint auto_increment, 
nome varchar(255) not null,
quantidade int,
preco decimal,
primary key(id)
);
-- inserir produtos e valores
insert into tb_produtos(nome, quantidade, preco) 
values("maça", 10, 1.99);
insert into tb_produtos(nome, quantidade, preco) 
values("banana", 13, 4.99);
insert into tb_produtos(nome, quantidade, preco) 
values("manga", 20, 5.49);
insert into tb_produtos(nome, quantidade, preco) 
values("melancia", 3, 10.00);
insert into tb_produtos(nome, quantidade, preco) 
values("cebola", 100, 1.50);
insert into tb_produtos(nome, quantidade, preco) 
values("batata", 150, 5.50);

-- selecionar a tabela
select *from tb_produtos;
-- trazer apenas o nome do produto
select nome from tb_produtos;

select nome, preco from tb_produtos;

select *from tb_produtos where preco > 1.99;

select *from tb_produtos where preco < 5.99 or nome ="banana";




-- atualizei o preco do produto dentro da tabela, nao faz parte da estrutura  
update tb_produtos set preco  = 1.99 where id=1;
delete from tb_produtos where id=6;
-- SET DEIXA O DELETE SEM WHERE FUNCIONAR 
set SQL_SAFE_UPDATES = 0;
update tb_produtos set descricao ="banana ouro";


-- alterar um produto e modificar 
alter table tb_produtos modify preco decimal(8,2);
alter table tb_produtos add descricao varchar(255); 

-- excluindo a coluna inteira da banana ouro 
alter table tb_produtos drop descricao;


 delete from tb_produtos;



