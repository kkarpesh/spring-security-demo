DROP TABLE IF EXISTS users;
CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  email VARCHAR(250) NOT NULL UNIQUE,
  first_name VARCHAR(250) NOT NULL,
  last_name VARCHAR(250) NOT NULL,
  password VARCHAR(250) NOT NULL,
  role VARCHAR(20) NOT NULL,
  status VARCHAR(20) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO users (id, email, first_name, last_name, password, role, status) VALUES (1, 'user@mail.com', 'User', 'Userov', '$2y$12$Rhn9TWWmDon0uMuXVXSQZe4so2t8YPmHeitfm6PE3mYFL8TdmVWaC', 'USER', 'BANNED');
INSERT INTO users (id, email, first_name, last_name, password, role, status) VALUES (2, 'user2@mail.com', 'User2', 'Userov2', '$2y$12$aoKq41/1S2envn6l/R0nTeuo6jKnpy2Zcgiwjs1vB/e1CSbFOE2tK', 'USER', 'ACTIVE');
INSERT INTO users (id, email, first_name, last_name, password, role, status) VALUES (3, 'admin@mail.com', 'Admin', 'Adminov', '$2y$12$nWRkHSleHk1PVlQR2OFpBOSa5Azmwtl7BXpPfUGmYPpDtxIquHTh.', 'ADMIN', 'ACTIVE');