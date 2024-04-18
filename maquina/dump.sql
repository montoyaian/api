 CREATE TABLE IF NOT EXISTS tutorials (
    id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    description varchar(255),
    published BOOLEAN DEFAULT false
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    INSERT INTO tutorials (title, description, published) VALUES ('Titulo del tutorial', 'Descripción del tutorial', true);