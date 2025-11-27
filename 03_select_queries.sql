-- 3.	SELECTS (5 consultas com WHERE, ORDER BY, LIMIT, JOIN…)

SELECT 1 — Listar todos os clientes
SELECT * FROM cliente ORDER BY nome;

SELECT 2 — Agendamentos com nome do cliente e serviço
SELECT a.id_agendamento, c.nome AS cliente, s.nome AS servico, a.data, a.horario
FROM agendamento a
JOIN cliente c ON a.id_cliente = c.id_cliente
JOIN servico s ON a.id_servico = s.id_servico;

SELECT 3 — Serviços acima de R$150
SELECT * FROM servico WHERE preco > 150 ORDER BY preco DESC;

SELECT 4 — Histórico de atendimentos de um profissional
SELECT p.nome AS profissional, c.nome AS cliente, s.nome AS servico, a.data
FROM agendamento a
JOIN profissional p ON p.id_profissional = a.id_profissional
JOIN cliente c ON c.id_cliente = a.id_cliente
JOIN servico s ON s.id_servico = a.id_servico
WHERE p.id_profissional = 1;

SELECT 5 — Top 2 serviços mais caros
SELECT nome, preco FROM servico ORDER BY preco DESC LIMIT 2;
