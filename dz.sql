skypro=# \c skypro;
Вы подключены к базе данных "skypro" как пользователь "postgres".
skypro=# CREATE TABLE city(
    skypro(# city_id BIGSERIAL PRIMARY KEY,
        skypro(# city_name VARCHAR(30) NOT NULL);
CREATE TABLE
     ALTER TABLE employee ADD COLUMN city_id INT;
ALTER TABLE
    ALTER TABLE employee
    ADD CONSTRAINT employee_city
    FOREIGN KEY (city_id)
    REFERENCES city(city_id);
INSERT INTO city (city_id, city_name)
VALUES (1, 'Ростов'),
       (2, 'Краснодар'),
       (3, 'Оренбург'),
       (4, 'Москва'),
       (5, 'Новоросийск');
skypro=# UPDATE employee
    skypro-# SET city_id = 1
             skypro-# WHERE id = 1;
skypro=# UPDATE employee
    skypro-# SET city_id = 2
             skypro-# WHERE id = 2;
skypro=# UPDATE employee
    skypro-# SET city_id = 3
             skypro-# WHERE id = 3;
skypro=# UPDATE employee
    skypro-# SET city_id = 4
             skypro-# WHERE id = 4;
skypro=# UPDATE employee
    skypro-# SET city_id = 5
             skypro-# WHERE id = 5;


skypro=# SELECT first_name AS "Имя", last_name AS "Фамилия", city_name AS "Город"
             skypro-# FROM employee
             skypro-# JOIN city ON employee.city_id = city.city_id;

skypro=# SELECT first_name, last_name, city_name
    skypro-# FROM employee
     skypro-# LEFT JOIN city ON employee.city_id = city.city_id;

skypro=# SELECT first_name, last_name, city_name
    skypro-# FROM employee
     skypro-# LEFT JOIN city ON employee.city_id = city.city_id;
skypro=# SELECT first_name, last_name, city_name
    skypro-# FROM employee
     skypro-# CROSS JOIN city;