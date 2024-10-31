# Base de Dados - Momento
Este repositório contém a base de dados de funcionários e produtos da empresa Momento. A atividade visa treinar consultas complexas no MySQL com foco em análise exploratória de dados.

## Exercícios

### 1. Quantos funcionários da empresa Momento trabalham no departamento de Vendas?
**Resposta**:  

---

### 2. Inclua suas próprias informações no departamento de Tecnologia da empresa.

Q:
```sql
INSERT INTO funcionarios(funcionario_id,primeiro_nome,sobrenome,email,senha,telefone,data_contratacao,cargo_id,salario,gerente_id,departamento_id) VALUES (208,'Yago','Gonçalves','franyagoy@gmail.com','yagoat30#@','2054-3750','2024-10-31',20,30.000,NULL,6);
```

---

### 3. Quantos funcionários temos ao total na empresa?
**Resposta**: São 42 Funcionários ao todo.  

Q:
```sql
SELECT COUNT(*) FROM momento.funcionarios;
```

---

### 4. Quantos funcionários trabalham no Departamento de Tecnologia?
**Resposta**:  

---

### 5. Quanto o departamento de Vendas gasta em salários?
**Resposta**:  

---

### 6. Criação do Departamento de Inovações

---

### 7. O departamento de Inovações está sem funcionários. Inclua alguns colegas de turma nesse departamento.

---

### 8. Quantos funcionários a empresa Momento tem agora?
**Resposta**:  

---

### 9. Quantos funcionários da empresa Momento possuem cônjuges?
**Resposta**:  

---

### 10. Qual a média salarial dos funcionários da empresa Momento, excluindo-se o CEO?
**Resposta**:  

---

### 11. Qual a média salarial do departamento de Tecnologia?
**Resposta**:  

---

### 12. Qual o departamento com a maior média salarial?
**Resposta**:  

---

### 13. Qual o departamento com o menor número de funcionários?
**Resposta**:  

---

### 14. Pensando na relação quantidade e valor unitário, qual o produto mais valioso da empresa?
**Resposta**:  

---

### 15. Qual o produto mais vendido da empresa?
**Resposta**:  

---

### 16. Qual o produto menos vendido da empresa?
**Resposta**:  

---

### 17. Qual o funcionário contratado há mais tempo na empresa?
**Resposta**:  

---

### 18. Qual o funcionário contratado há menos tempo na empresa?
**Resposta**:  

---

## Como Executar
1. Clone este repositório.
2. Importe o arquivo JSON no MongoDB.
3. Execute as consultas para responder às perguntas.

## Tecnologias Utilizadas
- MySQL Workbench
- SQL  

## Autor
Este projeto foi desenvolvido como parte de uma atividade para prática de consultas e análise exploratória de dados no MySQL Workbench, proposta pelo Professor Gabriel.

---
