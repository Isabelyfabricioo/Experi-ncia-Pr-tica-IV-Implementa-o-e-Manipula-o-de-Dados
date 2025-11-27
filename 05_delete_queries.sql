-- 5.	DELETES — COM CONDIÇÃO

DELETE 1 — Deletar pagamentos com valor menor que 100
DELETE FROM pagamento WHERE valor < 100;

DELETE 2 — Remover agendamentos com status “cancelado”
DELETE FROM agendamento WHERE status = 'cancelado';

DELETE 3 — Excluir clientes cujo email está vazio
DELETE FROM cliente WHERE email IS NULL OR email = '';
