INSERT INTO cargo (nome_cargo)
VALUES 
    ('Garçom'), 
    ('Cozinheiro'),
    ('Gerente'),
    ('Recepcionista'),
    ('Auxiliar de limpeza');


   
INSERT INTO cliente (nome, cpf, telefone, email, data_nascimento)
VALUES  
    ('Guilherme Fernando', '27712343942', '8839318601', 'guilherme.fernando@gmail.com', '1980-07-13'),
    ('Pedro Caio Gonçalves', '43220048811', '62999655489', 'pedro@gmail.com', '1996-05-10'),
    ('Antônia Nicole', '02381537112', '63995648795', 'antonia@gmail.com', '2000-02-28'),
    ('Carlor Novais', '01234535962', '2199785263', 'carlosnovais@gmail.com', '1989-12-10'),
    ('Paula Caetano', '02567989659', '11998775423', 'paulac@gmail.com', '1999-03-01');

   

   INSERT INTO funcionario (nome_funcionario, cpf_funcionario, telefone_funcionario, id_cargo)
VALUES
    ('Ana Silva', '12345678901', '11987654321', 1),
    ('Carlos Santos', '98765432109', '1133334444', 2),
    ('Mariana Oliveira', '55555555555', '1188889999', 3),
    ('Pedro Rodrigues', '77777777777', '1177778888', 1),
    ('Isabela Costa', '88888888888', '1166667777', 2);
   
   
   INSERT INTO mesa (capacidade)
VALUES
    (4),
    (6),
    (2),
    (8),
    (4);
   
   
   INSERT INTO pedido (data_pedido, hora_pedido, id_cliente)
VALUES
    ('01/01/1995', '10:00:00', 1),
('02/01/1995', '11:30:00', 2),
('03/01/1995', '14:15:00', 3),
('04/01/1995', '16:45:00', 4),
('05/01/1995', '09:20:00', 5);


INSERT INTO pedido_funcionario (id_pedido, id_funcionario) 
VALUES
    (1, 3),
    (2, 5),
    (3, 2),
    (4, 4),
    (5, 1);

INSERT INTO prato(nome_prato, descricao_prato, preco_prato)
VALUES
    ('Lasanha Bolonhesa', 'Carne moída e queijo provolone', 50.00),
    ('Risoto de Camarão', 'Arroz arbóreo com camarões frescos', 65.00),
    ('Feijoada Completa', 'Feijão preto, carnes variadas e acompanhamentos', 40.00),
    ('Salmão Grelhado', 'Filé de salmão com molho de alcaparras', 55.00),
    ('Tiramisu', 'Sobremesa italiana com café e mascarpone', 20.00);
   
   
   
   INSERT INTO reserva (data_reserva, hora_reserva, id_cliente, id_mesa) 
VALUES
    ('2024-10-01', '19:00', 1, 3),
    ('2024-10-02', '20:00', 2, 1),
    ('2024-10-03', '18:30', 3, 2),
    ('2024-10-04', '21:00', 4, 4),
    ('2024-10-05', '12:00', 5, 5);
   
   

   INSERT INTO reserva_mesa (id_reserva, id_mesa)  
VALUES
    (1, 3),
    (2, 1),
    (3, 2),
    (4, 4),
    (5, 5);
   
   

   INSERT INTO pedido_prato (id_prato, id_pedido)   
VALUES
    (1, 1),
    (2, 2),
    (3, 3),
    (1, 4),
    (2, 5);
   
  
  

