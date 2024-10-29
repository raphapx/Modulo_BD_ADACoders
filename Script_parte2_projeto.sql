
--- 1 - . Quais são os filmes (film.title), suas respectivas categorias (category.name)e idioma (language.name)?



SELECT 
    film.title AS Filme,
    category.name AS Categoria,
    language.name AS Idioma
FROM 
    film
JOIN 
    film_category ON film.film_id = film_category.film_id
JOIN 
    category ON film_category.category_id = category.category_id
JOIN 
    language ON film.language_id = language.language_id;


---2 Quais foram os filmes alugados entre os dias 1 de fevereiro e 15 de março de 2006 na loja 1 (store.id = 1).

SELECT 
    film.title AS Filme,
    rental.rental_date AS Data_Aluguel
FROM 
    rental
JOIN 
    inventory ON rental.inventory_id = inventory.inventory_id
JOIN 
    film ON inventory.film_id = film.film_id
WHERE 
    rental.rental_date BETWEEN '2006-02-01' AND '2006-03-15'
    AND inventory.store_id = 1;





--- 3  Qual a quantidade de vezes que cada filme foi alugado?

SELECT 
    film.title AS Filme,
    COUNT(rental.rental_id) AS Quantidade_Alugueis
FROM 
    film
JOIN 
    inventory ON film.film_id = inventory.film_id
JOIN 
    rental ON inventory.inventory_id = rental.inventory_id
GROUP BY 
    film.title
ORDER BY 
    Quantidade_Alugueis DESC;

   


---- 4-  Para cada funcionário (staff.staff_id), qual é o valor total retornado em locações (payment.amount) e qual é a 
-- quantidade total de locações (rental.rental_id)?

SELECT 
    staff.first_name AS Funcionario,
    SUM(payment.amount) AS Valor_Total_Retornado,
    COUNT(rental.rental_id) AS Quantidade_Total_Locacoes
FROM 
    staff
JOIN 
    payment ON staff.staff_id = payment.staff_id
JOIN 
    rental ON payment.rental_id = rental.rental_id
GROUP BY 
    staff.staff_id
ORDER BY 
    staff.staff_id;

   
   

--- 5 - Para obter o nome da categoria de filme que retorna mais dinheiro no total, ordenado por lucratividade, 
-- e garantir que todas as categorias apareçam no resultado, você pode usar a seguinte consulta SQL:


SELECT 
    category.name AS Categoria,
    COALESCE(SUM(payment.amount), 0) AS Total_Lucratividade
FROM 
    category
LEFT JOIN 
    film_category ON category.category_id = film_category.category_id
LEFT JOIN 
    inventory ON film_category.film_id = inventory.film_id
LEFT JOIN 
    rental ON inventory.inventory_id = rental.inventory_id
LEFT JOIN 
    payment ON rental.rental_id = payment.rental_id
GROUP BY 
    category.name
ORDER BY 
    Total_Lucratividade DESC;

