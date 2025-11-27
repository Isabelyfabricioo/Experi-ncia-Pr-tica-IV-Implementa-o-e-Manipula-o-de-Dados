-- 4.	UPDATES (3 comandos com condições)

UPDATE 1 — Alterar status de um agendamento
UPDATE agendamento SET status = 'concluído' WHERE id_agendamento = 1;

UPDATE 2 — Ajustar preço de um serviço
UPDATE servico SET preco = preco + 20 WHERE id_servico = 3;
UPDATE 3 — Atualizar telefone de cliente
UPDATE cliente SET telefone = "11944443333" WHERE id_cliente = 2;
