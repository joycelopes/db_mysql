create database db_escola;
use db_escola; 
create table tb_alunos(
id bigint auto_increment, 
nome varchar(255) not null,
idade int,
turma int,
nota decimal(8,2),
primary key (id)
); 

insert into tb_alunos(nome, idade, turma, nota) 
values("carlos", 16, 3, 7.8 );
insert into tb_alunos(nome, idade, turma, nota) 
values("julia", 13, 5, 4.5 );
insert into tb_alunos(nome, idade, turma, nota) 
values("nicole", 6, 8, 10.0 );
insert into tb_alunos(nome, idade, turma, nota) 
values("john", 17, 8, 6.5 );


select *from tb_alunos;

select *from tb_alunos where nota > 7.0;
select *from tb_alunos where nota < 7.0;


update tb_alunos set nota  = 5.0 where id=2;
