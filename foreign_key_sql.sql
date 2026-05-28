USE startersql;
CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users(id) 
);
insert into addresses (user_id,street,city,state,pincode)
values
(22,'flaher','aacher','nrw','52074'),
(3,'flaher','aacher','nrw','52074');





-- SELECT users.name, addresses.city
-- FROM users
-- INNER JOIN addresses ON users.id = addresses.user_id;
SELECT users.name,gender, addresses.city
FROM users
Left JOIN addresses ON users.id = addresses.user_id;
