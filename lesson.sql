CREATE TABLE product(
id int not null auto_increment,
name varchar(50) not null,
created_by int not null,
marca varchar (50) not null,
primary key (id),
foreign key (created_by) references user (id)
);

insert into product (name, created_by, marca)
values
('ipad',1,'apple'),
('iphone',1,'apple'),
('watch',2,'apple'),
('mcbook',1,'apple'),
('imac',3,'apple'),
('ipad mini',2,'apple');

select * from product;

select u.id, u.email, p.name from user u left join product p on u.id = p.created_by;
select u.id, u.email, p.name from user u right join product p on u.id = p.created_by;
select u.id, u.email, p.name from user u inner join product p on u.id = p.created_by;
select u.id, u.name, p.id, p.name from user u cross join product p;
SELECT count(id), marca from product group by marca;
SELECT count(p.id), u.name from product p left join user u on u.id = p.created_by group by created_by;
SELECT count(p.id), u.name from product p left join user u 
on u.id = p.created_by group by p.created_by
having count(p.id) >=2;

CREATE TABLE IF NOT EXISTS `mydb`.`user` (
  `id` VARCHAR(45) NOT NULL,
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE,
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)


