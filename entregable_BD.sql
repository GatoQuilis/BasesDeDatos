CREATE DATABASE  IF NOT EXISTS `entregable_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `entregable_db`;

CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `title` VARCHAR(100) NOT NULL,
   `creation_date` DATE,
   `last_modification_date` DATE,
   `description` VARCHAR(100) NOT NULL,
   `delete` TINYINT NOT NULL,
   `user_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100),
   PRIMARY KEY (`id`)
);

CREATE TABLE `category_note` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `category_id` INT NOT NULL,
   `note_id` TINYINT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_a9ac290a-6649-4b76-ac9b-1dd68645f129` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `category_note` ADD CONSTRAINT `FK_90766e9e-24c2-45e1-bb2d-bfedaafe1902` FOREIGN KEY (`category_id`) REFERENCES `categories`(`id`)  ;

ALTER TABLE `category_note` ADD CONSTRAINT `FK_eb595be8-b5c9-4f32-a7a5-0648c22993b4` FOREIGN KEY (`note_id`) REFERENCES `notes`(`id`)  ;

insert into users (`name`, `email`) values ('usuario1', 'usuario1@gmail.com');
insert into users (`name`, `email`) values ('usuario2', 'usuario2@gmail.com');
insert into users (`name`, `email`) values ('usuario3', 'usuario3@gmail.com');
insert into users (`name`, `email`) values ('usuario4', 'usuario4@gmail.com');
insert into users (`name`, `email`) values ('usuario5', 'usuario5@gmail.com');
insert into users (`name`, `email`) values ('usuario6', 'usuario6@gmail.com');
insert into users (`name`, `email`) values ('usuario7', 'usuario7@gmail.com');
insert into users (`name`, `email`) values ('usuario8', 'usuario8@gmail.com');
insert into users (`name`, `email`) values ('usuario9', 'usuario9@gmail.com');
insert into users (`name`, `email`) values ('usuario10', 'usuario10@gmail.com');

insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 1', '2021-11-10', '2021-11-16', 'Prueba nota 1', 0, 1);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 2', '2021-11-10', '2021-11-16', 'Prueba nota 2', 0, 2);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 3', '2021-11-10', '2021-11-16', 'Prueba nota 3', 0, 3);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 4', '2021-11-10', '2021-11-16', 'Prueba nota 4', 0, 4);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 5', '2021-11-10', '2021-11-16', 'Prueba nota 5', 0, 5);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 6', '2021-11-10', '2021-11-16', 'Prueba nota 6', 0, 6);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 7', '2021-11-10', '2021-11-16', 'Prueba nota 7', 0, 7);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 8', '2021-11-10', '2021-11-16', 'Prueba nota 8', 0, 8);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 9', '2021-11-10', '2021-11-16', 'Prueba nota 9', 0, 9);
insert into notes (`title`, `creation_date`, `last_modification_date`, `description`, `delete`, `user_id`) values ('Nota 10', '2021-11-10', '2021-11-16', 'Prueba nota 10', 0, 10);

insert into categories (name) values ('Categoria 1');
insert into categories (name) values ('Categoria 2');
insert into categories (name) values ('Categoria 3');
insert into categories (name) values ('Categoria 4');
insert into categories (name) values ('Categoria 5');
insert into categories (name) values ('Categoria 6');
insert into categories (name) values ('Categoria 7');
insert into categories (name) values ('Categoria 8');
insert into categories (name) values ('Categoria 9');
insert into categories (name) values ('Categoria 10');

insert into category_note (category_id, note_id) values (1, 1);
insert into category_note (category_id, note_id) values (2, 2);
insert into category_note (category_id, note_id) values (3, 3);
insert into category_note (category_id, note_id) values (4, 4);
insert into category_note (category_id, note_id) values (5, 5);
insert into category_note (category_id, note_id) values (6, 6);
insert into category_note (category_id, note_id) values (7, 7);
insert into category_note (category_id, note_id) values (8, 8);
insert into category_note (category_id, note_id) values (9, 9);
insert into category_note (category_id, note_id) values (10, 10);