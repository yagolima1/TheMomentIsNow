# Base de Dados - Momento
Este repositório contém a base de dados de funcionários e produtos da empresa Momento. A atividade visa treinar consultas complexas no MySQL com foco em análise exploratória de dados.

## Departamento de Tecnologia 

### 1) Inclua suas próprias informações no departamento de Tecnologia da empresa.

Q:
```sql
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (208,'Yago','Gonçalves','franyagoy@gmail.com','yagoat30#@','2054-3750','2024-10-31',20,30.000,NULL,6);
```

---

### 2) Quantos funcionários temos ao total na empresa?
**Resposta**: São 42 Funcionários ao todo.  

Q:
```sql
SELECT COUNT(*) FROM momento.funcionarios;
```

---

### 3) Quantos funcionários trabalham no Departamento de Tecnologia?
**Resposta**: 6 Funcionários trabalham no Departamento de Tecnologia.

Q:
```sql
SELECT COUNT(*) FROM momento.funcionarios WHERE departamento_id = 6;
```

---

## Departamento de Vendas

### 4) Quantos funcionários trabalham no Departamento de Vendas?
**Resposta**: 5 Funcionários trabalham no Departamento de Vendas.

Q:
```sql
SELECT COUNT(*) FROM momento.funcionarios WHERE departamento_id = 8;
```

---

### Salários no Departamento de Vendas

### 5) Qual é o custo total dos salários do pessoal de Vendas? Isso nos ajuda a entender o orçamento do departamento!
**Resposta**: O pessoal de Vendas tem um custo total de seus salários de: **R$51.500,00**.

Q:
```sql
SELECT SUM(salario) FROM momento.funcionarios WHERE departamento_id = 8;
```

---

### 6) Quanto o departamento de Vendas gasta em salários?
**Resposta**: Eles gastam **R$51.500,00**.

Q:
```sql
SELECT SUM(salario) FROM momento.funcionarios WHERE departamento_id = 8;
```

---

### 7) Quais são os produtos mais vendidos e quais têm pouca ou nenhuma saída?
**Resposta**: Os produtos mais vendidos foram o Uniforme do Superman e o Capacete do Homem Formiga, e os com poucas saídas foram o Laço da Honestidade e os Batarangues Oficiais.

Q:
```sql
SELECT produto_nome,quantidade FROM momento.vendas
INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
ORDER BY quantidade DESC;
```

---

### 8) Qual é o produto mais caro no inventário da empresa?
**Resposta**: É o Sabre de Luz do Mace Windu, custando **R$990,29**.

Q:
```sql
SELECT * FROM momento.produtos ORDER BY produto_price DESC;
```

---

## Departamento de Inovações

* **Um novo departamento foi criado. O departamento de Inovações.** 
Ele será locado no Brasil. Por favor, adicione-o no banco de dados da empresa colocando quaisquer informações que você achar relevantes.

**Resposta**: Q:

```sql
INSERT INTO escritorios(escritorio_id,escritorio_nome,endereco,cep,cidade,estado_provincia,pais_id) VALUES (2000,"Estúdio de Inovação",'Senac Lapa Tito','05051-000','São Paulo','São Paulo','BR');

INSERT INTO departamentos(departamento_id,departamento_nome,escritorio_id) VALUES (14,'Inovação',2000);
```

---

* O departamento de Inovações está sem funcionários. Inclua alguns colegas de turma nesse departamento.
  
**Resposta**: Q:

```sql
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (209,'Vinicius','Cezario','vinascez@gmail.com','starwars20#@','5421-4455','2024-10-31',20,12000.00,NULL,14);
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (210,'Gustavo','Gabriel','gugabriel@gmail.com','gatoflamingo55$','5428-1475','2024-10-31',20,12000.00,NULL,14);
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (211,'Elton','Santos','eltonsantos@gmail.com','nba10#','1421-7432','2024-10-31',20,12000.00,NULL,14);
```

---

## Funcionários

### 9) Quantos funcionários da empresa Momento possuem conjuges?
**Resposta**: 37 funcionários possuem conjuges.

Q:
```sql
SELECT COUNT(*) FROM momento.funcionarios
INNER JOIN dependentes ON funcionarios.funcionario_id = dependentes.funcionario_id
```

---

### 10) Qual o funcionário contratado há mais tempo na empresa?
**Resposta**: O Steven Wayne, desde 1987.

Q:
```sql
SELECT CONCAT(primeiro_nome, " ", sobrenome) AS nome_funcionario, data_contratacao FROM momento.funcionarios ORDER BY data_contratacao;
```

---

### 11) Qual o funcionário contratado há menos tempo na empresa?
**Resposta**: O Guga, que foi contratado hoje, dia 31/10 de 2024.

Q:
```sql
SELECT CONCAT(primeiro_nome, " ", sobrenome) AS nome_funcionario, data_contratacao FROM momento.funcionarios ORDER BY data_contratacao DESC;
```

---

### 12) Quem são os funcionários com mais tempo na empresa, considerando a `data_contratacao`?

**Resposta**: Steven Wayne e Jennifer Whalen, ambos ingressaram no mesmo ano, 1987.

Q:
```sql
SELECT CONCAT(primeiro_nome, " ", sobrenome) AS nome_funcionario, data_contratacao FROM momento.funcionarios ORDER BY data_contratacao;
```

---

### 13) Como a média salarial dos funcionários da "Momento" evoluiu nos últimos anos? Dica: utilize a função `AVG()` para calcular a média salarial dos funcionários. e `GROUP BY` para agrupar os resultados por ano.
**Resposta**: A média salarial dos funcionários durante os anos foi bem inconstânte, variando bastante os números, com resultados altos e baixos.

Q:
```sql
SELECT AVG(salario) AS Media_Salarial, YEAR(data_contratacao) AS Ano FROM funcionarios GROUP BY data_contratacao ORDER BY YEAR(data_contratacao);
```

---

## Médias Salariais

### 14) Qual a média salarial dos funcionários da empresa Momento, excluindo-se o CEO, CMO e CFO?
**Resposta**: A média salarial dos funcionários excluindo CEO, CMO e CFO é de **R$8.496,67**.

Q:
```sql
SELECT AVG(salario) AS Media_Salarial FROM funcionarios WHERE cargo_id NOT IN (4,7,10);
```

---

### 15) Qual a média salarial do departamento de tecnologia?
**Resposta**: A média salarial desse departamento é de **R$4.805,00**.

Q:
```sql
SELECT AVG(salario) AS Media_Salarial FROM funcionarios WHERE departamento_id = 6;
```

---

### 16) Qual o departamento com a maior média salarial?
**Resposta**: É o Departamento de Tecnologias Avançadas, com **R$21.815,00**.

Q:
```sql
SELECT funcionarios.departamento_id, departamentos.departamento_nome, AVG(salario) AS Media_Salarial FROM funcionarios
INNER JOIN departamentos ON departamentos.departamento_id = funcionarios.departamento_id
GROUP BY departamento_id 
ORDER BY Media_Salarial DESC;
```

---

### 17) Qual o departamento com o menor número de funcionários?
**Resposta**: São os Departamentos de Administração, Recursos Humanos, Relações Públicas, Contabilidade e Biotecnologia, todos com 1 funcionários cada.

Q:
```sql
SELECT funcionarios.departamento_id, departamentos.departamento_nome, COUNT(*) FROM momento.funcionarios 
INNER JOIN departamentos ON departamentos.departamento_id = funcionarios.departamento_id
GROUP BY departamento_id
ORDER BY COUNT(*);
```

---

## Produtos

### 18) Pensando na relação quantidade e valor unitario, qual o produto mais valioso da empresa?
**Resposta**: É o Uniforme do Superman.

Q:
```sql
SELECT produto_nome, produto_price, quantidade FROM momento.vendas
INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
ORDER BY quantidade DESC;
```

---

### 19) Qual o produto mais vendido da empresa?
**Resposta**: É o Uniforme do Superman, com 167 unidades vendidas.

Q:
```sql
SELECT produto_nome, quantidade FROM momento.vendas
INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
ORDER BY quantidade DESC;
```

---

### 20) Qual o produto menos vendido da empresa?
**Resposta**: São os Batarangues Oficiais, com apenas 3 unidades vendidas.

Q:
```sql
SELECT produto_nome, quantidade FROM momento.vendas
INNER JOIN produtos ON produtos.produto_id = vendas.produto_id
ORDER BY quantidade;
```

---

## Escritórios

### 21) Quantos escritórios a "Momento" possui em cada região? (Dica: relacione as tabelas regioes e escritorios).
**Resposta**: A Momento possui 3 Escritórios no Reino Unido, 3 nos Estados Unidos e 1 Escritório no Brasil, Canadá, Alemanha e em Wakanda.

Q:
```sql
SELECT paises.pais_nome, escritorios.pais_id, COUNT(*) FROM momento.escritorios
INNER JOIN paises ON paises.pais_id = escritorios.pais_id
GROUP BY pais_id
ORDER BY COUNT(*) DESC;
```

---

### 22) Qual é o custo total de suprimentos em cada escritório? Que tal ordenar os resultados para ver qual escritório possui os suprimentos mais caros?
**Resposta**: Umbrella Corp: **R$405.000,00** |
<br>
Baxter Building: **R$403.752,85** |
<br>
Wayne escritorios: **R$148.000,00** |
<br>
Shuri's Palace: **R$5.505,70** |
<br>
Sala Winter: **R$5.050,07** |
<br>
House of Mystery escritorios: **R$4.000,00** |
<br>
Arkham Base: **R$2.000,00**

Q:
```sql
SELECT escritorios.escritorio_nome, SUM(custo) FROM momento.suprimentos
INNER JOIN escritorios ON escritorios.escritorio_id = suprimentos.escritorio_id
GROUP BY escritorio_nome
ORDER BY SUM(custo) DESC;
```

---

## Como Executar
1. Clone este repositório.
2. Importe o arquivo JSON no MySQL.
3. Execute as consultas para responder às perguntas.

## Tecnologias Utilizadas
- MySQL Workbench
- SQL  

## Autor
Este projeto foi desenvolvido como parte de uma atividade para prática de consultas e análise exploratória de dados no MySQL Workbench, proposta pelo Professor Gabriel.

---
