-- 2. SCRIPT DE INSERT (povoar tabelas)

-- Clientes
INSERT INTO cliente (nome, telefone, email, data_nascimento) VALUES
("Ana Maria", "11988887777", "ana@gmail.com", "1995-08-10"),
("Beatriz Souza", "11977776666", "bia@gmail.com", "1999-02-28"),
("Carla Monteiro", "11966665555", "carla@gmail.com", "1988-11-12");

-- Profissionais
INSERT INTO profissional (nome, especialidade, telefone) VALUES
("Mariana Lopes", "Limpeza de Pele", "11999998888"),
("Juliana Azevedo", "Massoterapia", "11955554444");

-- Serviços
INSERT INTO servico (nome, duracao_minutos, preco) VALUES
("Limpeza de Pele", 60, 120.00),
("Massagem Relaxante", 45, 150.00),
("Peeling Químico", 40, 200.00);

-- Agendamentos
INSERT INTO agendamento (data, horario, id_cliente, id_profissional, id_servico, status) VALUES
("2025-11-20", "14:00", 1, 1, 1, "agendado"),
("2025-11-21", "16:00", 2, 2, 2, "agendado"),
("2025-11-22", "10:00", 3, 1, 3, "agendado");

-- Atendimentos
INSERT INTO atendimento (id_agendamento, observacoes, status_final) VALUES
(1, "Pele sensível, recomendado hidratação", "concluído"),
(2, "Paciente relaxada, nenhum imprevisto", "concluído"),
(3, "Reação leve, dentro do esperado", "concluído");

-- Pagamentos
INSERT INTO pagamento (id_atendimento, valor, forma_pagamento, data_pagamento) VALUES
(1, 120.00, "Cartão", "2025-11-20"),
(2, 150.00, "Pix", "2025-11-21"),
(3, 200.00, "Cartão", "2025-11-22");
