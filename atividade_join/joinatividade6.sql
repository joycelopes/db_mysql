create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
setor_curso varchar (255) not null,
primary key (id)
);
 insert into tb_categoria(setor_curso)
 values("tecnologia");
 insert into tb_categoria(setor_curso)
 values("ciencias biologicas");
 insert into tb_categoria(setor_curso)
 values("exatas");
  insert into tb_categoria(setor_curso)
 values("saúde");
 
 select *from tb_categoria;

create table tb_curso(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(8,2),
modo varchar (255) not null,
cat_id bigint,
primary key (id),
foreign key (cat_id) references tb_categoria(id)
);

insert into tb_curso(nome,  preco, modo, cat_id)
values("Csharp", 180.00, "ead", 1);
insert into tb_curso(nome,  preco, modo, cat_id)
values("biomedicina", 180.00, "presencial", 2);
insert into tb_curso(nome,  preco, modo, cat_id)
values("matematica", 180.00, "semipresencial", 3);
insert into tb_curso(nome,  preco, modo, cat_id)
values("enfermagem", 180.00, "presencial", 4);


select *from tb_curso; 

select * from tb_curso where preco > 50.00 ;

select * from tb_curso where preco between 3.00 and 60.00;

select * from tb_curso where nome like "%c%";

select * from tb_categoria inner join tb_curso
on tb_categoria.id = tb_curso.cat_id;


select * from tb_categoria inner join tb_curso
on tb_categoria.id = tb_curso.cat_id
where tb_categoria.id =4;







