create database my_app;
use my_app;
create table users_tbl(
user_id int not null primary key auto_increment,
user_firstname varchar(40) not null,
user_lastname varchar(40) not null,
user_email varchar(60)not null,
user_password varbinary(255)
);
select * from users_tbl;

insert into users_tbl (user_firstname, user_lastname, user_email, user_password) values ("Nicol","Garcia","buzon@email.com","123");

INSERT INTO my_app.users_tbl (user_firstname, user_lastname, user_email, user_password)
VALUES (UPPER('Nicol'), UPPER('Garcia'), 'buzon@correo.com',
AES_ENCRYPT('Hola mundo','$2a$12$cFh1G5rN.i4CDIjSGEKckO7RjJ1YQr520uHCMufT5dRSvvRkBO9wa'));

SELECT *,
 CAST(AES_DECRYPT(user_password,
'$2a$12$cFh1G5rN.i4CDIjSGEKckO7RjJ1YQr520uHCMufT5dRSvvRkBO9wa') AS CHAR(50))
end_data FROM users_tbl WHERE user_id = 1;


alter table product_tbl 
add constraint category_id
foreign key (category_id)
references category_tbl (category_id);

insert INTO CarUnity.users_tbl (user_firstname, user_lastname, user_email, user_password)VALUES (UPPER('fabian'), UPPER('perez'), 'mate@gmail.com',AES_ENCRYPT('password','$2a$15$Ov6xYXkMlR2Ez2/RwUiO.OoYBEIKcQzy3YQkIfeIQXCiTPUSAWPta'));
SELECT *,CAST(AES_DECRYPT(user_password,'$2a$15$Ov6xYXkMlR2Ez2/RwUiO.OoYBEIKcQzy3YQkIfeIQXCiTPUSAWPta') AS CHAR(50))end_data FROM users_tbl WHERE user_id = 1;

						
