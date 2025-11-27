# 💆‍♀️ BeautyCare – Experiência Prática IV  
## Criação e Manipulação de Dados em SQL (Mini-mundo)

Este repositório contém todos os scripts SQL desenvolvidos para a Experiência Prática IV da disciplina de **Implementação e Manipulação de Dados**.  
O meu projeto utiliza o minimundo *BeautyCare*, criado em experiências anteriores, representando o funcionamento de uma clínica de estética.

---

# 📁 Organização dos Arquivos

- `01_create_tables.sql` → Criação do banco e das tabelas  
- `02_insert_data.sql` → Inserção de dados nas tabelas  
- `03_select_queries.sql` → Consultas SELECT  
- `04_update_queries.sql` → Comandos UPDATE com condição  
- `05_delete_queries.sql` → Comandos DELETE com condição 

---

# 🧰 Pré-requisitos

Para executar os scripts, você precisa ter:

- MySQL Server ou MariaDB  
- MySQL Workbench, DBeaver ou outro cliente SQL  
- Permissão para criar banco de dados  

---

# ▶️ Como Executar os Scripts

## **1️⃣ Criação das Tabelas**
Arquivo: `01_create_tables.sql`

Esse script:

- cria o banco `beautycare`
- seleciona o banco com `USE`
- cria todas as tabelas e suas chaves primárias/estrangeiras

> Execute ele primeiro.

---

## **2️⃣ Inserção de Dados**
Arquivo: `02_insert_data.sql`

Insere registros nas tabelas:

- cliente  
- profissional  
- servico  
- agendamento  
- atendimento  
- pagamento  

> Deve ser executado após as tabelas existirem.

---

## **3️⃣ Consultas SELECT**
Arquivo: `03_select_queries.sql`

Contém consultas utilizando:

- `JOIN`  
- `WHERE`  
- `ORDER BY`  
- `LIMIT`

São usadas para validar os dados e testar o banco.

---

## **4️⃣ Comandos UPDATE (com condição)**
Arquivo: `04_update_queries.sql`

Todos os comandos UPDATE possuem cláusula **WHERE**.

Esses comandos:

- modificam registros específicos  
- são seguros  
- representam situações reais do sistema  

Exemplos típicos do arquivo:

- atualizar o telefone de um cliente específico  
- alterar status de um agendamento  
- ajustar preço de um serviço determinado  

---

## **5️⃣ Comandos DELETE (com condição)**
Arquivo: `05_delete_queries.sql`

Todos os comandos DELETE incluem `WHERE` para evitar exclusão total da tabela.

Exemplos típicos:

- excluir agendamentos cancelados  
- remover clientes sem e-mail  
- apagar pagamentos antigos ou com valor muito baixo  

---

# ✔️ Validação da Atividade

Após executar todos os scripts, você deve conseguir:

- visualizar os dados inseridos (SELECTs)
- ver atualizações feitas nos registros específicos (UPDATE)
- confirmar exclusões controladas (DELETE)
- manter a integridade do banco de dados

---

# 👩‍💻 Autora  
**Isabely Fabricio**
