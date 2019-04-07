CREATE DATABASE todo DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;

CREATE TABLE IF NOT EXISTS tasks (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    task_name VARCHAR(35) NOT NULL,
    task_description VARCHAR(255),
    task_date DATE NOT NULL DEFAULT 0,
    task_status TINYINT(1) NOT NULL DEFAULT 0,
    created_on DATETIME NOT NULL DEFAULT NOW(),
    last_updated DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW()
);