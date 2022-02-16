create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
setor varchar (255) not null,
primary key (id)
);
 insert into tb_categoria(setor)
 values("cozinha");
 insert into tb_categoria(setor)
 values("churrasqueira");
 insert into tb_categoria(setor)
 values("quarto");
  insert into tb_categoria(setor)
 values("jardim");
 
 select *from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar(255) not null,
marca varchar(255) not null, 
preco decimal(8,2),
lote varchar (255) not null,
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id)
);

insert into tb_produto(nome, marca, preco, lote, cat_id)
values("torneira", "tigre" , 68.00, 120, 1);
insert into tb_produto(nome, marca, preco, lote, cat_id)
values("tijolinho ", " arcos" , 3.20, 140, 2);
insert into tb_produto(nome, marca, preco, lote, cat_id)
values("tinta", "suvinil" , 88.00, 037, 3);
insert into tb_produto(nome, marca, preco, lote, cat_id)
values("sistema_irrigação", " tigre" , 48.00, 022, 4);

select *from tb_produto; 

select * from tb_produto where preco > 50.00 ;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%c%";

select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.cat_id;


select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.cat_id
where tb_categoria.id =2;



