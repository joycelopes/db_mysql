create database db_ecommerce;
use db_ecommerce; 
create table tb_produtos(
id bigint auto_increment, 
modelo varchar(255) not null,
cor varchar(255) not null,
numero int,
marca varchar (255) not null,
valor decimal(8,2),
primary key (id)
); 
insert into tb_produtos(modelo, cor, numero, marca, valor) 
values("tênis", "branco", 38, "nike", 350.00);
insert into tb_produtos(modelo, cor, numero, marca, valor) 
values("scarpin", "vermelho", 36, "versace", 2500.00);
insert into tb_produtos(modelo, cor, numero, marca, valor) 
values("sandalia", "preto", 37, "jimmi choco",500.00);
insert into tb_produtos(modelo, cor, numero, marca, valor) 
values("bota", "marrom", 37, "louisVuitton", 8000.00);


select  *from tb_produtos;

select *from tb_produtos where valor > 500.00;
select *from tb_produtos where valor < 500.00;


update tb_produtos set valor  = 450.00 where id=3;

