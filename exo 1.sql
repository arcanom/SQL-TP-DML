create database db2;

use db2;
create table personne(
id int not null auto_increment,
titre enum('Mr','Mme','Mlle'),
prenom varchar(32),
nom varchar(32),
email varchar(32),
telephone varchar(32),

primary key(id)
);

insert into personne (titre,prenom,nom,email,telephone)values('Mlle','Tata','Toto','tatatoto@monemail.com','0987654321'),('Mr','Minet','Gros','grosminet@monemail.com','0612345678'),
('Mme','Jane','Doe', 'janedoe@gmail.com','0987654321'),('Mr','Bernard','Minet','bernardminet@gmail.com',0614762345),('Mlle','Jessica','Rabbit','jr@gmail.com','06777777777'),
('Mr','Zoro','Roronoa', 'zozo@monemail.com','098654321'),('Mme','foo','bar','foo@bar.com','0913243546');

/* 2*/
select * from personne order by nom asc;

/* 3 */
select * from personne order by titre desc;

/* 4 */
select * from personne where email = 'foo@bar.com';