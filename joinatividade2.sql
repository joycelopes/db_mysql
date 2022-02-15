create database db_pizzaria_legal;
use db_pizzaria_legal;
 
create table tb_categoria(
id bigint auto_increment,
tamanho varchar (255) not null,
tipo varchar (255) not null,
massa varchar (255) not null,
primary key(id)
);

insert into tb_categoria(tamanho, tipo, massa)
values("grande", "salgada","vegana"); 
insert into tb_categoria(tamanho, tipo, massa)
values("pequeno", "salgada","batata"); 
insert into tb_categoria(tamamnho, tipo, massa)
values("medio", "salgada","vegana"); 
insert into tb_categoria(tamanho, tipo, massa)
values("medio", "salgada","integral"); 
insert into tb_categoria(tamanho, tipo, massa)
values("pequeno", "doce","chocolate"); 

select*from tb_categoria;

create table tb_pizza(
id bigint auto_increment,
nome varchar (255) not null,
ingredientes varchar (255) null,
preco decimal(8,2),
borda_Pizza varchar (255) not null  ,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_pizza (nome, ingredientes,preco,borda_Pizza, categoria_id)
values("portuguesa", "queijo,presunto,ovo,ervilha" , 56.00 , "sem borda",1 );
insert into tb_pizza (nome, ingredientes,preco,borda_Pizza , categoria_id)
values("calabreza", "calabreza , cebola e queijo" , 40.00 , "borda catupiry", 2);
insert into tb_pizza (nome, ingredientes,preco,borda_Pizza , categoria_id)
values("funghi", "cogumelo , queijo" , 50.00, "sem borda",  3);
insert into tb_pizza (nome, ingredientes,preco,borda_Pizza , categoria_id)
values("banana nevada", "banana, chocolate branco" , 40.00 , "borda chocolate", 5);


select  *from tb_pizza;

select* from tb_pizza where preco > 45.00;

select *from tb_pizza where  preco between 29.00 and 60.00 ;

select *from tb_pizza where preco like "%c%";

select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id;

select * from tb_pizza inner join tb_categoria
on tb_pizza.categoria_id = tb_categoria.id
where tb_categoria.id = 5  ;
















