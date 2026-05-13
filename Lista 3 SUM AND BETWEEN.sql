use catalogacao_e_emprestimos;

-- =============================================================================
-- Exercícios: SELECT SUM FROM WHERE ORDER BY
-- =============================================================================

-- 1. Calcule a soma de Quantity de todos os registros na tabela.
select sum(Quantity) as 'Soma das quantidades da tabela'
from OrderDetail;

-- 2. Encontre a soma de Quantity onde o ProductID é maior que 10.
select sum(Quantity) as 'Soma das quantidades onde id do produto > 10' 
from OrderDetail
where ProductID > 10;

-- 3. Determine a soma de Quantity onde o OrderID seja menor que 100.
select sum(Quantity) as 'Soma das quantidades onde id do pedido < 100'
from OrderDetail
where OrderID < 100;

-- 4. Calcule a soma de Quantity para os registros onde o OrderDetailID seja par.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe é par' 
from OrderDetail
where OrderDetailID % 2 = 0;

-- 5. Obtenha a soma de Quantity para os registros com OrderID igual a 200.
select sum(Quantity) as 'Soma das quantidades onde ID do produto = 200'
from OrderDetail
where OrderID = 200;

-- 6. Calcule a soma de Quantity para os registros com ProductID entre 5 e 15.
select sum(Quantity) as 'Soma das quantidades onde ID do produto esta entre 5 e 15'
from OrderDetail
where ProductID between 5 and 15;

-- 7. Determine a soma de Quantity para os registros onde Quantity seja maior que 20.
select sum(Quantity) as 'Soma das quantidades maiores que 20'
from OrderDetail
where Quantity > 20;

-- 8. Encontre a soma de Quantity onde o OrderID seja ímpar.
select sum(Quantity) as 'Soma das quantidades onde id do pedido é impar'
from OrderDetail
where OrderID % 2 != 0;

-- 9. Calcule a soma de Quantity onde o ProductID seja divisível por 5.
select sum(Quantity) as 'Soma das quantidades onde ID do produto é divisível por 5'
from OrderDetail
where ProductID % 5 = 0;

-- 10. Determine a soma de Quantity para registros com OrderDetailID entre 50 e 100.
select sum(Quantity) as 'Soma das quantidades onde Id do detalhe está entre 50 e 100'
from OrderDetail
where OrderDetailID between 50 and 100;

-- 11. Filtre os registros com Quantity maior que 15 e calcule a soma de Quantity.
select sum(Quantity) as 'Soma das quantidades maiores que 15'
from OrderDetail
where Quantity > 15;

-- 12. Obtenha a soma de Quantity onde o ProductID esteja nos valores 3, 6 e 9.
select sum(Quantity) as 'soma das quantidades onde ID do produto = 3, 6 e 9'
from OrderDetail
where ProductID in (3, 6, 9);

-- 13. Determine a soma de Quantity onde o OrderID termine com o número 0.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido termina com 0'
from OrderDetail
where OrderID like '%0';

-- 14. Calcule a soma de Quantity onde o ProductID seja maior que 20.
select sum(Quantity) as 'Soma das quantidades onde ID do produto > 20'
from OrderDetail
where ProductID > 20;

-- 15. Encontre a soma de Quantity onde o OrderDetailID seja menor que 30.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe < 30'
from OrderDetail
where OrderDetailID < 30;

-- 16. Determine a soma de Quantity para os registros onde Quantity esteja entre 10 e 30.
select sum(Quantity) as 'Soma das quantidades entre 10 e 30'
from OrderDetail
where Quantity between 10 and 30;

-- 17. Filtre os registros onde OrderID seja múltiplo de 4 e calcule a soma de Quantity.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido é multiplo de 4'
from OrderDetail
where OrderID % 4 =0;

-- 18. Calcule a soma de Quantity onde o ProductID não esteja nos valores 1, 2, e 3.
select sum(Quantity) as 'Soma das quantidades onde ID do produto não é 1, 2 e 3'
from OrderDetail
where ProductID not in (1, 2, 3);

-- 19. Obtenha a soma de Quantity onde o OrderDetailID seja maior que 200.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe > 200'
from OrderDetail
where OrderDetailID > 200;

-- 20. Determine a soma de Quantity onde o OrderID comece com o número 1.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido começa com 1'
from OrderDetail
where OrderID like '1%';

-- 21. Calcule a soma de Quantity onde o ProductID seja divisível por 7.
select sum(Quantity) as 'Soma das quantidades'
from OrderDetail
where ProductID % 7 = 0;

-- 22. Encontre a soma de Quantity onde o OrderDetailID termine com 5.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe termina com 5'
from OrderDetail
where OrderDetailID like '%5';

-- 23. Determine a soma de Quantity para os registros onde Quantity seja menor que 12.
select sum(Quantity) as 'Soma das quantidades menores que 12'
from OrderDetail
where Quantity < 12;

-- 24. Filtre os registros onde OrderID seja igual a 300 e calcule a soma de Quantity.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido = 300'
from OrderDetail
where OrderID = 300;

-- 25. Calcule a soma de Quantity para os registros com ProductID entre 15 e 25.
select sum(Quantity) as 'Soma das quantidades onde ID do produto entre 15 e 25'
from OrderDetail
where ProductID between 15 and 25;

-- 26. Obtenha a soma de Quantity onde o OrderDetailID seja ímpar.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe é impar'
from OrderDetail
where OrderDetailID % 2 != 0;

-- 27. Encontre a soma de Quantity para os registros onde o ProductID seja maior que 50.
select sum(Quantity) as 'Soma das quantidades onde ID do produto > 50'
from OrderDetail
where ProductID > 50;

-- 28. Determine a soma de Quantity onde Quantity esteja entre 5 e 20.
select sum(Quantity) as 'Soma das quantidades entre 5 e 20'
from OrderDetail
where Quantity between 5 and 20;

-- 29. Calcule a soma de Quantity para os registros com OrderDetailID menor que 10.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe < 10'
from OrderDetail
where OrderDetailID < 10;

-- 30. Filtre os registros onde o OrderID seja maior que 100 e calcule a soma de Quantity.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido > 100'
from OrderDetail
where OrderID > 100;

-- 31. Obtenha a soma de Quantity onde o ProductID esteja nos valores 2, 4 e 8.
select sum(Quantity) as 'Soma das quantidades onde ID do produto em 2, 4 e 8'
from OrderDetail
where ProductID in (2, 4, 8);

-- 32. Determine a soma de Quantity onde o OrderDetailID comece com o número 3.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe começa com 3'
from OrderDetail
where OrderDetailID like '3%';

-- 33. Encontre a soma de Quantity onde Quantity seja divisível por 10.
select sum(Quantity) as 'Soma das quantidades onde quantidade é divisível por 10'
from OrderDetail
where Quantity % 10 = 0;

-- 34. Calcule a soma de Quantity onde o OrderID seja maior que 250.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido > 250'
from OrderDetail
where OrderID > 250;

-- 35. Determine a soma de Quantity onde o ProductID termine com o número 6.
select sum(Quantity) as 'Soma das quantidades onde ID do produto termina com 6'
from OrderDetail
where ProductID like '%6';

-- 36. Filtre os registros onde o OrderID seja menor que 50 e calcule a soma de Quantity.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido < 50'
from OrderDetail
where OrderID < 50;

-- 37. Obtenha a soma de Quantity onde o ProductID seja maior que 30.
select sum(Quantity) as 'Soma das quantidades onde ID do produto > 30'
from OrderDetail
where ProductID > 30;

-- 38. Calcule a soma de Quantity onde o OrderDetailID seja maior que 400.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe > 400'
from OrderDetail
where OrderDetailID > 400;

-- 39. Determine a soma de Quantity onde o OrderID esteja entre 20 e 60.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido entre 20 e 60'
from OrderDetail
where OrderID between 20 and 60;

-- 40. Filtre os registros onde Quantity seja maior que 18 e calcule a soma de Quantity.
select sum(Quantity) as 'Soma das quantidades maiores que 18'
from OrderDetail
where Quantity > 18;

-- 41. Encontre a soma de Quantity onde o ProductID seja divisível por 9.
select sum(Quantity) as 'Soma das quantidades onde ID do produto é divisível por 9'
from OrderDetail
where ProductID % 9 = 0;

-- 42. Calcule a soma de Quantity onde o OrderDetailID seja menor que 150.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe < 150'
from OrderDetail
where OrderDetailID < 150;

-- 43. Determine a soma de Quantity para os registros onde Quantity esteja entre 25 e 40.
select sum(Quantity) as 'Soma das quantidades entre 25 e 40'
from OrderDetail
where Quantity between 25 and 40;

-- 44. Obtenha a soma de Quantity onde o ProductID seja igual a 7.
select sum(Quantity) as 'Soma das quantidades onde ID do produto = 7'
from OrderDetail
where ProductID = 7;

-- 45. Calcule a soma de Quantity para os registros com OrderID maior que 400.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido > 400'
from OrderDetail
where OrderID > 400;

-- 46. Encontre a soma de Quantity para os registros onde OrderDetailID termine com 9.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe termina com 9'
from OrderDetail
where OrderDetailID like '%9';

-- 47. Determine a soma de Quantity onde o OrderID seja múltiplo de 5.
select sum(Quantity) as 'Soma das quantidades onde ID do pedido é múltiplo de 5'
from OrderDetail
where OrderID % 5 = 0;

-- 48. Filtre os registros onde o Quantity esteja entre 20 e 50 e calcule a soma de Quantity.
select sum(Quantity) as 'Soma das quantidades entre 20 e 50'
from OrderDetail
where Quantity between 20 and 50;

-- 49. Obtenha a soma de Quantity onde o ProductID seja menor que 12.
select sum(Quantity) as 'Soma das quantidades onde ID do produto < 12'
from OrderDetail
where ProductID < 12;

-- 50. Calcule a soma de Quantity onde o OrderDetailID esteja entre 100 e 300.
select sum(Quantity) as 'Soma das quantidades onde ID do detalhe entre 100 e 300'
from OrderDetail
where OrderDetailID between 100 and 300;

-- =============================================================================
-- Exercícios: SELECT FROM WHERE AND ORDER BY
-- =============================================================================

-- 1. Liste todos os registros onde Quantity seja maior que 15 e ProductID seja maior que 10, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 15 and productID > 10
order by OrderDetailID;

-- 2. Filtre os registros onde OrderID seja menor que 100 e Quantity seja maior que 20, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID < 100 and Quantity > 20
order by ProductID;

-- 3. Obtenha os registros onde ProductID esteja entre 5 e 15 e OrderID seja divisível por 2, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID between 5 and 15 and OrderID % 2 = 0
order by Quantity;

-- 4. Liste todos os registros onde OrderDetailID seja maior que 50 e ProductID termine com 0, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID > 50 and ProductID like '%0'
order by OrderID;

-- 5. Filtre os registros onde Quantity seja menor que 12 e OrderID esteja entre 100 e 200, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 12 and OrderID between 100 and 200
order by ProductID;

-- 6. Liste os registros onde OrderID seja igual a 300 e Quantity esteja entre 10 e 20, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID = 300 and Quantity between 10 and 20
order by OrderDetailID;

-- 7. Obtenha todos os registros onde ProductID seja maior que 20 e Quantity seja um número ímpar, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID > 20 and Quantity % 2 != 0
order by OrderID;

-- 8. Liste os registros onde OrderDetailID seja divisível por 5 e ProductID seja menor que 10, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID % 5 = 0 and ProductID < 10
order by Quantity;

-- 9. Filtre os registros onde Quantity seja maior que 18 e OrderID termine com 3, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 18 and OrderID like '%3'
order by ProductID;

-- 10. Obtenha os registros onde ProductID seja divisível por 4 e OrderDetailID seja menor que 200, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 4 = 0 and OrderDetailID < 200
order by Quantity;

-- 11. Liste os registros onde OrderID seja múltiplo de 3 e Quantity seja maior que 10, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID % 3 = 0 and Quantity > 10
order by OrderDetailID;

-- 12. Obtenha os registros onde OrderDetailID termine com 6 e Quantity esteja entre 20 e 40, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID like '%6' and Quantity between 20 and 40
order by ProductID;

-- 13. Liste os registros onde ProductID seja menor que 30 e OrderID seja maior que 100, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID < 30 and OrderID > 100
order by Quantity;

-- 14. Filtre os registros onde Quantity seja divisível por 7 e OrderDetailID seja menor que 300, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity % 7 = 0 and OrderDetailID < 300
order by ProductID;

-- 15. Obtenha os registros onde OrderID esteja entre 150 e 300 e Quantity seja maior que 25, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID between 150 and 300 and Quantity > 25
order by OrderDetailID;

-- 16. Liste os registros onde Quantity seja menor que 20 e ProductID termine com 5, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 20 and ProductID like '%5'
order by OrderID;

-- 17. Filtre os registros onde OrderID seja maior que 500 e ProductID seja divisível por 3, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID > 500 and ProductID % 3 = 0
order by Quantity;

-- 18. Liste os registros onde OrderDetailID esteja entre 100 e 200 e Quantity seja menor que 15, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID between 100 and 200 and Quantity < 15
order by ProductID;

-- 19. Obtenha os registros onde ProductID seja maior que 10 e OrderID seja menor que 50, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID > 10 and OrderID < 50
order by Quantity;

-- 20. Liste os registros onde OrderDetailID seja menor que 10 e Quantity seja divisível por 2, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID < 10 and Quantity % 2 = 0
order by OrderID;

-- 21. Filtre os registros onde OrderID esteja entre 300 e 400 e ProductID seja menor que 20, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID between 300 and 400 and ProductID < 20
order by Quantity;

-- 22. Obtenha os registros onde Quantity seja maior que 30 e OrderDetailID termine com 8, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 30 and OrderDetailID like '%8'
order by OrderID;

-- 23. Liste os registros onde OrderID seja divisível por 6 e Quantity esteja entre 15 e 35, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID % 6 = 0 and Quantity between 15 and 35
order by ProductID;

-- 24. Filtre os registros onde ProductID seja maior que 25 e OrderDetailID seja divisível por 3, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID > 25 and OrderDetailID % 3 = 0
order by Quantity;

-- 25. Liste os registros onde OrderDetailID seja maior que 400 e OrderID seja múltiplo de 5, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID > 400 and OrderID % 5 = 0
order by Quantity;

-- 26. Obtenha os registros onde Quantity seja menor que 10 e OrderID seja maior que 50, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 10 and OrderID > 50
order by ProductID;

-- 27. Filtre os registros onde ProductID esteja entre 5 e 20 e OrderID termine com 7, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID between 5 and 20 and OrderID like '%7'
order by OrderDetailID;

-- 28. Liste os registros onde OrderID seja menor que 200 e Quantity seja maior que 25, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID < 200 and Quantity > 25
order by ProductID;

-- 29. Obtenha os registros onde ProductID seja divisível por 9 e Quantity esteja entre 10 e 20, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 9 = 0 and Quantity between 10 and 20
order by OrderID;

-- 30. Filtre os registros onde Quantity seja maior que 50 e ProductID seja menor que 30, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 50 and ProductID < 30
order by OrderDetailID;

-- 31. Liste os registros onde OrderDetailID seja divisível por 4 e OrderID seja menor que 300, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID % 4 = 0 and OrderID < 300
order by Quantity;

-- 32. Obtenha os registros onde Quantity seja menor que 5 e OrderID esteja entre 10 e 100, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 5 and OrderID between 10 and 100
order by ProductID;

-- 33. Filtre os registros onde OrderID termine com 2 e ProductID seja maior que 15, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID like '%2' and ProductID > 15
order by Quantity;

-- 34. Liste os registros onde Quantity seja menor que 12 e OrderDetailID seja maior que 150, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 12 and OrderDetailID > 150
order by OrderID;

-- 35. Obtenha os registros onde ProductID esteja entre 20 e 40 e Quantity seja divisível por 3, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID between 20 and 40 and Quantity % 3 = 0
order by Quantity;

-- 36. Filtre os registros onde OrderID seja maior que 700 e Quantity seja maior que 40, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID > 700 and Quantity > 40
order by ProductID;

-- 37. Liste os registros onde ProductID seja divisível por 8 e OrderID seja menor que 400, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 8 = 0 and OrderID < 400
order by Quantity;

-- 38. Obtenha os registros onde Quantity seja maior que 15 e OrderDetailID termine com 4, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity > 15 and OrderDetailID like '%4'
order by OrderID;

-- 39. Filtre os registros onde OrderID seja menor que 100 e ProductID esteja entre 10 e 20, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID < 100 and ProductID between 10 and 20
order by OrderDetailID;

-- 40. Liste os registros onde Quantity seja menor que 30 e ProductID seja divisível por 5, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity < 30 and ProductID % 5 = 0
order by OrderID;

-- 41. Obtenha os registros onde ProductID termine com 9 e Quantity seja menor que 20, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID like '%9' and Quantity < 20
order by OrderDetailID;

-- 42. Liste os registros onde OrderID seja divisível por 5 e ProductID esteja entre 15 e 30, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID % 5 = 0 and ProductID between 15 and 30
order by Quantity;

-- 43. Filtre os registros onde Quantity esteja entre 25 e 50 e OrderDetailID seja divisível por 7, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity between 25 and 50 and OrderDetailID % 7 = 0
order by OrderID;

-- 44. Obtenha os registros onde OrderID seja menor que 250 e Quantity seja divisível por 6, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID < 250 and Quantity % 6 = 0
order by ProductID;

-- 45. Liste os registros onde OrderDetailID esteja entre 50 e 150 e ProductID seja maior que 20, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID between 50 and 150 and ProductID > 20
order by Quantity;

-- 46. Filtre os registros onde OrderID seja igual a 350 e Quantity seja maior que 30, ordenados por ProductID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID = 350 and Quantity > 30
order by ProductID;

-- 47. Obtenha os registros onde ProductID termine com 0 e OrderDetailID seja divisível por 2, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID like '%0' and OrderDetailID % 2 = 0
order by OrderID;

-- 48. Liste os registros onde Quantity esteja entre 10 e 25 e ProductID seja menor que 50, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where Quantity between 10 and 25 and ProductID < 50
order by Quantity;

-- 49. Filtre os registros onde OrderID termine com 1 e Quantity seja divisível por 5, ordenados por OrderDetailID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID like '%1' and Quantity % 5 = 0
order by OrderDetailID;

-- 50. Obtenha os registros onde OrderDetailID seja maior que 300 e Quantity seja menor que 12, ordenados por OrderID.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderDetailID > 300 and Quantity < 12
order by OrderID;