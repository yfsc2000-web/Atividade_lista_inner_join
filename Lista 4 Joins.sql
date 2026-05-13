use catalogacao_e_emprestimos;

-- Parte 1: Explorando o INNER JOIN
-- 1. Liste o nome do produto, o nome do fornecedor e o país do fornecedor para todos os produtos da categoria 2.
select products.ProductID as 'ID do produto', products.ProductName as 'Nome do produto',  suppliers.SupplierName as 'Nome do fornecedor', supplieraddress.country as 'País do fornecedor'
from suppliers inner join products on
suppliers.SupplierID = products.SupplierID
inner join supplieraddress on 
suppliers.SupplierAddressID = supplieraddress.SupplierAddressID
where products.CategoryID = 2;

-- 2. Exiba o ID do pedido, a data do pedido e o nome da transportadora responsável por cada entrega.
select orders.OrderID as 'ID do pedido', orders.OrderDate as 'Data do pedido', shippers.ShipperName as 'Nome da transportadora'
from orders inner join shippers on
orders.ShipperID = shippers.ShipperID;

-- 3. Mostre o nome do produto e o nome da cidade do fornecedor para produtos que custam mais de 50 unidades monetárias.
select products.ProductName as 'Nome do produto', supplieraddress.City as 'Cidade do fornecedor'
from suppliers inner join products on
products.SupplierID = suppliers.SupplierID
inner join supplieraddress on
supplieraddress.SupplierAddressID = suppliers.SupplierAddressID
where products.Price > 50;

-- 4. Relacione todos os pedidos (Orders) feitos, mostrando o ID do pedido e o nome da transportadora, filtrando apenas para a transportadora 'Correios Sedex'.
select orders.OrderID as 'ID do pedido', shippers.ShipperName as 'Nome da transportadora'
from orders inner join shippers on
orders.ShipperID = shippers.ShipperID
where ShipperName = 'Correios Sedex';

select country from supplieraddress;

-- 5. Liste os nomes dos produtos e os nomes de seus respectivos fornecedores, mas apenas para fornecedores localizados no 'Brazil' ou 'USA'.
select products.ProductName as 'Nome do produto', suppliers.SupplierName as 'Nome do fornecedor'
from suppliers inner join products on
products.SupplierID = suppliers.SupplierID
inner join supplieraddress on
suppliers.SupplierAddressID = suppliers.SupplierAddressID
where supplieraddress.Country in ('Brasil', 'USA');

-- 6. Gere um relatório com o ID do pedido, a data e o telefone da transportadora para todos os pedidos realizados no ano de 2023.
select orders.OrderID as 'ID do pedido', orders.OrderDate as 'Data do pedido', shippers.Phone as 'Telefone da transportadora'
from orders inner join shippers on
orders.ShipperID = shippers.ShipperID
where OrderDate like '2023%';

-- 7. Mostre o nome do fornecedor e o nome do produto para todos os itens cujo preço unitário esteja entre 10 e 20.
select suppliers.SupplierName as 'Nome do fornecedor', products.ProductName as 'Nome do produto'
from products inner join suppliers on
products.SupplierID = suppliers.SupplierID
where products.Price between 10 and 20;

-- 8. Liste todos os pedidos e os nomes das transportadoras, ordenando o resultado pelo nome da transportadora em ordem alfabética.
select orders.OrderID as 'ID do pedido', orders.OrderDate as 'Data do pedido', shippers.ShipperName as 'Nome da transportadora'
from orders inner join shippers on
orders.ShipperID = shippers.ShipperID
order by ShipperName asc;

-- Parte 2: O Desafio do LEFT e RIGHT JOIN
-- 9. (LEFT) Liste todos os fornecedores e os nomes de seus produtos. Certifique-se de que fornecedores que ainda não possuem produtos cadastrados também apareçam na lista.
select suppliers.SupplierName as 'Nome dos fornecedores', products.ProductName as 'Nome do produto'
from suppliers left join products on
suppliers.SupplierID = products.SupplierID;

-- 10. (LEFT) Exiba o nome de todas as transportadoras e a quantidade de pedidos que cada uma realizou. Inclua transportadoras que nunca realizaram um pedido.
select shippers.ShipperName as 'Nome da transportadora', count(orders.orderID) as 'Quantidade de pedidos'
from shippers left join orders on
shippers.ShipperID = orders.ShipperID
group by shippers.ShipperName;

-- 11. (RIGHT) Liste todos os produtos e seus respectivos fornecedores. Use RIGHT JOIN para garantir que todos os fornecedores apareçam, mesmo aqueles sem produtos vinculados.
select products.ProductName as 'Nome do produto', suppliers.SupplierName as 'Nome do fornecedor'
from products right join suppliers on
products.SupplierID = suppliers.SupplierID;

-- 12. (LEFT) Mostre o nome de todos os fornecedores e, caso existam, os nomes dos produtos que eles fornecem, filtrando para mostrar apenas fornecedores da 'Germany'.
select suppliers.SupplierName as 'Nome do fornecedor', products.ProductName as 'Nome do produto'
from suppliers left join products on
suppliers.SupplierID = products.SupplierID
where suppliers.SupplierName like '%Germany%';

-- 13. (RIGHT) Relacione todas as transportadoras com os pedidos realizados, garantindo que as transportadoras sem pedidos no sistema ainda sejam listadas.
select shippers.ShipperName as 'Nome da transportadora', orders.OrderID 'ID do pedido', orders.OrderDate as 'Data do pedido'
from orders right join shippers on
shippers.ShipperID = orders.ShipperID;

-- Parte 3: Consultas Complexas (Múltiplos Joins e Filtros)
-- 14. Liste o nome do produto, o nome do fornecedor e o nome da transportadora para um pedido específico (ex: OrderID 10248). Dica: Você precisará conectar 4 tabelas.
select products.ProductName as 'Nome do produto', suppliers.SupplierName as 'Nome do fornecedor', shippers.ShipperName as 'Nome da transportadora', orderdetail.OrderID as 'ID do pedido'
from products inner join suppliers on
products.SupplierID = suppliers.SupplierID
inner join orderdetail on
products.ProductID = orderdetail.ProductID
inner join orders on
orderdetail.OrderID = orders.OrderID
inner join shippers on
orders.ShipperID = shippers.ShipperID
where orders.OrderID = 3;

-- 15. Exiba o nome do fornecedor, a cidade do fornecedor e a data do pedido para todos os produtos que foram vendidos e entregues pela transportadora 'United Package'.
select suppliers.SupplierName as 'Nome do fornecedor', supplieraddress.City as 'Cidade do fornecedor', orders.OrderDate as 'Data do pedido'
from suppliers inner join supplieraddress on
suppliers.SupplierAddressID = supplieraddress.SupplierAddressID
inner join products on
products.SupplierID = suppliers.SupplierID
inner join orderdetail on 
products.ProductID = orderdetail.ProductID
inner join orders on 
orderdetail.OrderID = orders.OrderID
inner join shippers on 
orders.ShipperID = shippers.ShipperID
where shippers.ShipperName like '%United Package%';

-- 16. Crie uma consulta que mostre quais fornecedores (SupplierName) têm produtos que nunca foram associados a um pedido (OrderID is NULL).
select suppliers.SupplierName as 'Nome do fornecedor', products.ProductName as 'Nome do produto', orderdetail.OrderID as 'ID do pedido'
from suppliers inner join products on 
suppliers.SupplierID = products.SupplierID
left join orderdetail on
products.ProductID = orderdetail.ProductID 
where orderdetail.OrderID is null;

-- 17. Liste o nome do contato do fornecedor e o nome do produto, mas apenas para produtos que pertencem às categorias 1, 3 ou 5 e que são de fornecedores do 'UK'.
select suppliers.ContactName as 'Nome do Contato', products.ProductName as 'Nome do produto'
from suppliers inner join products on 
suppliers.SupplierID = products.SupplierID
inner join supplieraddress on 
suppliers.SupplierAddressID = supplieraddress.SupplierAddressID
where products.CategoryID in (1, 3, 5) and supplieraddress.Country like '%United Kingdom%';

-- 18. Encontre o valor total gasto em fretes (ou apenas a contagem de pedidos) por fornecedor, agrupando pelo nome do fornecedor e usando joins para conectar as tabelas necessárias.
select suppliers.SupplierName as 'Nome do fornecedor', count(orders.OrderID) as 'Contagem de pedidos'
from suppliers inner join products on 
suppliers.SupplierID = products.SupplierID
inner join orderdetail on
orderdetail.ProductID = products.ProductID
inner join orders on 
orderdetail.OrderID = orders.OrderID
group by suppliers.SupplierName;

-- 19. Mostre o nome do produto, o nome da categoria (assuma a lógica de ID) e o nome do fornecedor, onde o preço do produto é superior à média de preços de todos os produtos.
select products.ProductName as 'Nome do produto', categories.CategoryName as 'Nome da categoria', suppliers.SupplierName as 'Nome do fornecedor'
from products inner join categories on 
products.CategoryID = categories.CategoryID
inner join suppliers on
suppliers.SupplierID = products.SupplierID
where products.Price > (select avg(Price) from products);

-- 20. Desafio Final: Liste todos os pedidos, o nome do fornecedor de cada produto contido no pedido e o nome da transportadora. (Nota: Esta consulta exige uma visão clara de como as tabelas Orders e Products se conectam através de uma tabela intermediária de itens, caso ela exista, ou uma lógica de join direto se o schema for simplificado).
select orders.OrderID as 'ID do pedido', suppliers.SupplierName as 'Nome do fornecedor', shippers.ShipperName as 'Nome da transportadora'
from orders inner join shippers on 
orders.ShipperID = shippers.ShipperID
inner join orderdetail on 
orders.OrderID = orderdetail.OrderID
inner join products on
orderdetail.ProductID = products.ProductID
inner join suppliers on
products.SupplierID = suppliers.SupplierID;

