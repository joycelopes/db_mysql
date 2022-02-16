create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar (255) not null,
fabricante varchar(255) null,
primary key(id)
);

insert into tb_categoria( categoria, fabricante)
values(  "analgesico", " cimed"); 
insert into tb_categoria( categoria, fabricante)
values(  "calmante", " floramed"); 
insert into tb_categoria( categoria, fabricante)
values(  "vitamina", " DrGood"); 

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
descricao varchar (255),
nome varchar(255) not null,
preco decimal(8,2),
fm_id bigint,
primary key (id),
foreign key (fm_id) references tb_categoria (id)
);

insert into tb_produto (descricao, nome, preco, fm_id)
values("dores" , "dorflex " , 6.00 , 1);
insert into tb_produto (descricao, nome, preco, fm_id)
values("ansiedade" , "pasilix " , 35.00 , 2);
insert into tb_produto (descricao, nome, preco, fm_id)
values(" imunidade" , "poliGood" , 98.00 , 3);


select *from tb_produto; 

select * from tb_produto where preco > 50.00 ;

select * from tb_produto where preco between 3.00 and 60.00;

select * from tb_produto where nome like "%b%";

select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.fm_id;


select * from tb_categoria inner join tb_produto
on tb_categoria.id = tb_produto.fm_id
where tb_categoria.id =2;  