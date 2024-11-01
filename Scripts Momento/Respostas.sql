-- INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (208,'Yago','Gonçalves','franyagoy@gmail.com','yagoat30#@','2054-3750','2024-10-31',20,30.000,NULL,6);

-- 

-- SELECT COUNT(*) FROM momento.funcionarios;

-- SELECT COUNT(*) FROM momento.funcionarios WHERE departamento_id = 6;

-- SELECT COUNT(*) FROM momento.funcionarios WHERE departamento_id = 8;

-- SELECT SUM(salario) FROM momento.funcionarios WHERE departamento_id = 8;

-- SELECT SUM(salario) FROM momento.funcionarios WHERE departamento_id = 8;

-- SELECT produto_nome,quantidade FROM momento.vendas
-- INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
-- ORDER BY quantidade DESC;

-- SELECT * FROM momento.produtos ORDER BY produto_price DESC;

-- INSERT INTO escritorios(escritorio_id,escritorio_nome,endereco,cep,cidade,estado_provincia,pais_id) VALUES (2000,"Estúdio de Inovação",'Senac Lapa Tito','05051-000','São Paulo','São Paulo','BR');
-- INSERT INTO departamentos(departamento_id,departamento_nome,escritorio_id) VALUES (14,'Inovação',2000);

-- INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (209,'Vinicius','Cezario','vinascez@gmail.com','starwars20#@','5421-4455','2024-10-31',20,12000.00,NULL,14);
-- INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (210,'Gustavo','Gabriel','gugabriel@gmail.com','gatoflamingo55$','5428-1475','2024-10-31',20,12000.00,NULL,14);
-- INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (211,'Elton','Santos','eltonsantos@gmail.com','nba10#','1421-7432','2024-10-31',20,12000.00,NULL,14);-- 

-- SELECT COUNT(*) FROM momento.funcionarios
-- INNER JOIN dependentes ON funcionarios.funcionario_id = dependentes.funcionario_id

-- SELECT CONCAT(primeiro_nome, " ", sobrenome) AS nome_funcionario, data_contratacao FROM momento.funcionarios ORDER BY data_contratacao;

-- SELECT CONCAT(primeiro_nome, " ", sobrenome) AS nome_funcionario, data_contratacao FROM momento.funcionarios ORDER BY data_contratacao DESC;

-- SELECT CONCAT(primeiro_nome, " ", sobrenome) AS nome_funcionario, data_contratacao FROM momento.funcionarios ORDER BY data_contratacao;

-- SELECT AVG(salario) AS Media_Salarial, YEAR(data_contratacao) AS Ano FROM funcionarios GROUP BY data_contratacao ORDER BY YEAR(data_contratacao);

-- SELECT AVG(salario) AS Media_Salarial FROM funcionarios WHERE cargo_id NOT IN (4,7,10);

-- SELECT AVG(salario) AS Media_Salarial FROM funcionarios WHERE departamento_id = 6;

-- SELECT funcionarios.departamento_id, departamentos.departamento_nome, AVG(salario) AS Media_Salarial FROM funcionarios
-- INNER JOIN departamentos ON departamentos.departamento_id = funcionarios.departamento_id
-- GROUP BY departamento_id 
-- ORDER BY Media_Salarial DESC;

-- SELECT funcionarios.departamento_id, departamentos.departamento_nome, COUNT(*) FROM momento.funcionarios 
-- INNER JOIN departamentos ON departamentos.departamento_id = funcionarios.departamento_id
-- GROUP BY departamento_id
-- ORDER BY COUNT(*);

-- SELECT produto_nome, produto_price, quantidade FROM momento.vendas
-- INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
-- ORDER BY quantidade DESC;

-- SELECT produto_nome, produto_price, quantidade FROM momento.vendas
-- INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
-- ORDER BY quantidade DESC;

-- SELECT produto_nome, quantidade FROM momento.vendas
-- INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
-- ORDER BY quantidade;

-- SELECT paises.pais_nome, escritorios.pais_id, COUNT(*) FROM momento.escritorios
-- INNER JOIN paises ON paises.pais_id = escritorios.pais_id
-- GROUP BY pais_id
-- ORDER BY COUNT(*) DESC;

-- SELECT escritorios.escritorio_nome, SUM(custo) FROM momento.suprimentos
-- INNER JOIN escritorios ON escritorios.escritorio_id = suprimentos.escritorio_id
-- GROUP BY escritorio_nome
-- ORDER BY SUM(custo) DESC;