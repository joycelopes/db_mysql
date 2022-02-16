create database db_cidade_das_carnes;
use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
categoria_carne varchar (255) not null,
fabricante varchar (255),
lote int,
primary key (id)
);

insert into tb_categoria (categoria_carne , fabricante, lote)
values("bovina" , "JBS" , 1);
insert into tb_categoria (categoria_carne , fabricante, lote)
values("suina" , "JBS" , 2);
insert into tb_categoria (categoria_carne , fabricante, lote)
values("ave" , "JBS" , 3);
insert into tb_categoria (categoria_carne , fabricante, lote)
values("embutido" , "JBS" , 4);


select *from tb_categoria;


create table tb_produto(
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(8,2),
peso decimal(8,2),
validade date ,
cat_id bigint  ,
primary key (id),
FOREIGN KEY (cat_id) REFERENCES tb_categoria (id)
);
 insert into tb_produto(nome, preco, peso, validade, cat_id)
 values( "picanha" , 62.00, 6980.00 , 20220911 , 1);
 insert into tb_produto(nome, preco, peso, validade, cat_id)
 values( "bacon" , 15.00, 1.560 , 20220412 , 2);
 insert into tb_produto(nome, preco, peso, validade, cat_id)
 values( "peito de frango" , 14.00, 3700.00, 20220822 , 3);
 insert into tb_produto(nome, preco, peso, validade, cat_id)
 values( "linguiça" , 23.00, 5300.00, 20220228 , 4);
 
select *from tb_produto; 

select * from tb_produto where preco > 50.00 ;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";

select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.cat_id;


select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.cat_id
where tb_categoria.id =2;