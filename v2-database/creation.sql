
DROP DATABASE IF EXISTS bank_db;

CREATE DATABASE bank_db;
USE bank_db;

-- table clients
CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

--table comptes
CREATE TABLE comptes(
    id INT PRIMARY KEY AUTO_INCREMENT,
    rib VARCHAR(20) NOT NULL UNIQUE,
    prin VARCHAR(4) NOT NULL,
    solde DECIMAL(10,2) DEFAULT 0.00,
    client_id INT NOT NULL ,
    FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);

CREATE TABLE transactions (
    id INT PRIMARY KEY AUTO_INCREMENT,
    date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    type VARCHAR(20) NOT NULL,
    montant DECIMAL(10,2) NOT NULL,
    compte_id INT NOT NULL,
    compte_destinataire_id INT NULL,
    FOREIGN KEY (compte_id) REFERENCES comptes(id),
    FOREIGN KEY (compte_destinataire_id) REFERENCES comptes(id)
);

-- données de test
INSERT INTO clients(nom,email) VALUES 
('Ahmed','ahmed@mail.com'),
('Salma','salma@mail.com');

INSERT INTO comptes(rib,prin,solde,client_id) VALUES
('100000000000001', '1234', 1000.00, 1),
('100000000000002', '5678', 500.00, 2);

-- afficher les données 
SELECT '===CLIENTS ===' AS '';
SELECT * FROM clients;
SELECT '===COMPTES ===' AS '';
SELECT * FROM comptes;