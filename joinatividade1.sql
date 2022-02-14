create database db_generation_game_online;

use db_generation_game_online;

create table tb_classes(
id bigint auto_increment,
nome varchar (255) not null,
habilidade varchar (255) ,
arma varchar (255),
primary key(id)
);

insert into tb_classes(nome, habilidade, arma)
values("feiticeiro", "bola de fogo","cajado");
insert into tb_classes(nome, habilidade, arma)
values("arqueiro", "chuva de flechas","arco e flecha");
insert into tb_classes(nome, habilidade, arma)
values("druida", "gelo e cura","livro");
insert into tb_classes(nome, habilidade, arma)
values("guerreiro", "excalibur","espada");
insert into tb_classes(nome, habilidade, arma)
values("curandeiro", "ressureiçao","gaze");

select *from tb_classes;



create table tb_personagens(
id bigint auto_increment,
nome  varchar (255) not null,
nivel int,
ataque int,
defesa int,
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classes(id)
);

insert into tb_personagens(nome, nivel, ataque, defesa,classe_id)
values(minseok, 100, 3000, 2800, 1);
insert into tb_personagens(nome, nivel, ataque, defesa,classe_id)
values(sakura, 100, 3000, 2800, 1);
insert into tb_personagens(nome, nivel, ataque, defesa,classe_id)
values(rabes, 100, 3000, 2800, 1);
insert into tb_personagens(nome, nivel, ataque, defesa,classe_id)
values(ginemon, 100, 3000, 2800, 1);
insert into tb_personagens(nome, nivel, ataque, defesa,classe_id)
values(grafe, 100, 3000, 2800, 1);
insert into tb_personagens(nome, nivel, ataque, defesa,classe_id)
values(tinkermon, 100, 3000, 2800, 1);
insert into tb_personagens(nome, nivel, ataque, defesa,classe_id)
values(sauydi, 100, 3000, 2800, 1);


select *from tb_personagens;

select *from tb_personagens where ataque > 2000;
-- traz personagem com a defesa entre 1000 e 2000
select *from tb_personagens where defesa 1000 >= and  defesa <= 2000;

select *from tb_personagens where defesa between 1000 and 2000;

select *from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id;


select * from tb_personagens inner join tb_classes
on tb_personagens.classe_id = tb_classes.id
where tb_classes.id = 2;




