CREATE DATABASE IF NOT EXISTS desafio;
USE desafio;
CREATE TABLE IF NOT EXISTS modulo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);
INSERT INTO modulo (name) VALUES ('Docker'), ('Fundamentos de Arquitetura de Software'), ('Comunicacao'), ('RabbitMQ'), ('Autenticacao e Keycloak');