CREATE TABLE IF NOT EXISTS grupos(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL UNIQUE,
quant_participantes INT NOT NULL
);
ALTER TABLE grupos ADD id_jogadores INT;
ALTER TABLE grupos ADD
CONSTRAINT fk_grupos_jogadores FOREIGN KEY(id_jogadores) REFERENCES jogadores(id);

INSERT INTO grupos(nome, quant_participantes) 
VALUES('Nepal', 5),
('Smurfs', 5),
('Enner Valencia', 5),
('Capivaras', 5);

CREATE TABLE IF NOT EXISTS jogadores(
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
idade DATE NOT NULL,
id_grupo INT,
FOREIGN KEY(id_grupo) REFERENCES grupos(id)
);
ALTER TABLE jogadores ADD id_jogo INT;
ALTER TABLE jogadores ADD
CONSTRAINT fk_jogadores_jogos FOREIGN KEY(id_jogo) REFERENCES jogos(id);

ALTER TABLE jogadores MODIFY idade INT;

INSERT INTO jogadores(nome, idade, id_grupo, id_jogo)
VALUES('Bruno C', 30, 1, 1),
('Bruno H', 26, 1, 4),
('Angelo', 15, 1, 3),
('Brunna', 26, 1, 5),
('Dave', 16, 1, 2),
('Ana', 18, 4, 3),
('Gregori', 15, 4, 5),
('Ederson', 15, 4, 2),
('Davis', 16, 4, 1),
('Athos', 16, 4, 4),
('Guilherme', 22, 3, 2),
('Arthur', 17, 3, 1),
('Pedro', 15, 3, 5),
('Heitor', 18, 3, 3),
('Leonardo', 15, 3, 4),
('Ana', 18, 4, 3),
('Luisa', 15, 4, 4),
('Gabriel', 23, 4, 1),
('Eduardo', 30, 4, 2),
('Robson', 52, 4, 5);


CREATE TABLE IF NOT EXISTS partidas(
id INT AUTO_INCREMENT PRIMARY KEY,
pontuação INT,
data_partida DATETIME,
id_jogador INT,
FOREIGN KEY(id_jogador) REFERENCES jogadores(id)
);

create table jogos (
id INT auto_increment primary key,
jogos_disponiveis varchar(100) not null
);

INSERT INTO jogos (jogos_disponiveis) VALUES ('Xadrez');
INSERT INTO jogos (jogos_disponiveis) VALUES ('Damas');
INSERT INTO jogos (jogos_disponiveis) VALUES ( 'Uno');
INSERT INTO jogos (jogos_disponiveis) VALUES ('Pife');
INSERT INTO jogos (jogos_disponiveis) VALUES ('Ping Pong')