-- Altere o nome do Pateta para Goofy;
UPDATE Animais
SET nome = 'Goofy'
WHERE nome = 'Pateta';

-- Altere o peso do Garfield para 10 kilogramas;
UPDATE Animais
SET peso = 10.00
WHERE nome = 'Garfield';

-- Altere a cor de todos os gatos para laranja;
UPDATE Animais
SET cor = 'laranja'
WHERE cor = 'gato';

-- Crie um campo altura para os animais;
ALTER TABLE Animais
ADD altura decimal(10,2);

-- Crie um campo observação para os animais;
ALTER TABLE Animais
ADD observacao varchar(255);

-- Remova todos os animais que pesam mais que 200 kilogramas.
DELETE FROM Animais
WHERE peso > 200;

-- Remova todos os animais que o nome inicie com a letra ‘C’.
DELETE FROM Animais
WHERE nome LIKE 'C%';

-- Remova o campo cor dos animais;
ALTER TABLE Animais
DROP COLUMN cor;

-- Aumente o tamanho do campo nome dos animais para 80 caracteres;
ALTER TABLE Animais
MODIFY nome varchar(80);

-- Remova todos os gatos e cachorros.
DELETE FROM Animais
WHERE nome IN ('Garfield', 'Pateta');

-- Remova o campo data de nascimento dos animaiS
ALTER TABLE Animais
DROP COLUMN nasc;

-- Remova todos os animais.
DELETE FROM Animais;

-- Remova a tabela especies.
DROP TABLE especies;