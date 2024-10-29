

-- Atualizando o nome e o email do cliente 


UPDATE cliente
SET nome = 'Guilherme Silva', email = 'guilherme.silva@gmail.com'
WHERE id = 1;

UPDATE cliente
SET nome = 'Pedro Gonçalves', email = 'pedro.goncalves@gmail.com'
WHERE id = 2;


---- Deletando um pedido no tabela prato

DELETE FROM prato WHERE id = 4;
DELETE FROM prato WHERE id = 5;



---- Consulta 1:

SELECT p.nome_prato, COUNT(pp.id_prato) AS total_pedidos
FROM pedido_prato pp
JOIN prato p ON pp.id_prato = p.id
GROUP BY p.nome_prato;



---- Consulta 2:
SELECT nome_prato, AVG(preco_prato) AS preco_medio
FROM prato
GROUP BY nome_prato
ORDER by preco_medio;



---- Consulta 3: 

SELECT pedido.id, cliente.nome, mesa.capacidade 
FROM pedido
JOIN cliente ON pedido.id = cliente.id
JOIN mesa ON pedido.id = mesa.id;


---- Consulta 4: 

SELECT prato.nome_prato, pedido.id, funcionario.nome_funcionario
FROM pedido_prato
JOIN prato ON pedido_prato.id_prato = prato.id
JOIN pedido ON pedido_prato.id_pedido = pedido.id
JOIN funcionario ON pedido.id = funcionario.id;



select* from cliente

