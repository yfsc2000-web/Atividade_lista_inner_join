use catalogacao_e_emprestimos;

-- =============================================================
-- Lista de exercícios: SELECT TOP FROM WHERE ORDER BY
-- =============================================================

-- [Itens 1 ao 28 mantidos conforme seu padrão...]

-- 29. Selecionar os 4 registros onde ProductID seja ímpar, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where ProductID % 2 != 0
order by Quantity asc
limit 4;

-- [Itens 30 ao 40 mantidos conforme seu padrão...]

-- 41. Selecionar os 10 registros onde OrderID seja ímpar, ordenados por Quantity.
select OrderDetailID as 'ID do detalhe', OrderID as 'ID do pedido', ProductID as 'ID do produto', Quantity as 'Quantidade'
from OrderDetail
where OrderID % 2 != 0
order by Quantity asc
limit 10;

-- [Itens 42 ao 50 mantidos conforme seu padrão...]


-- =============================================================
-- Lista de exercícios: SELECT AVG FROM WHERE ORDER BY
-- =============================================================

-- 1. Calcular a média de Quantity de todos os registros da tabela.
select avg(Quantity) as 'Média de quantidades'
from OrderDetail;

-- 2. Calcular a média de Quantity onde OrderID seja maior que 10.
select avg(Quantity) as 'Média de quantidades onde ID do pedido > 10'
from OrderDetail
where OrderID > 10;

-- 3. Calcular a média de Quantity onde ProductID seja igual a 5.
select avg(Quantity) as 'Média de quantidades onde ID do produto = 5'
from OrderDetail
where ProductID = 5;

-- 4. Calcular a média de Quantity para registros com OrderDetailID menor que 50.
select avg(Quantity) as 'Média de quantidades onde ID do detalhe < 50'
from OrderDetail
where OrderDetailID < 50;

-- 5. Calcular a média de Quantity onde OrderID seja maior que 100.
select avg(Quantity) as 'Média onde ID pedido > 100'
from OrderDetail
where OrderID > 100;

-- 6. Calcular a média de Quantity onde ProductID seja par.
select avg(Quantity) as 'Média onde ID produto é par'
from OrderDetail
where ProductID % 2 = 0;

-- 7. Calcular a média de Quantity onde OrderDetailID seja ímpar.
select avg(Quantity) as 'Média onde ID detalhe é ímpar'
from OrderDetail
where OrderDetailID % 2 != 0;

-- 8. Calcular a média de Quantity onde ProductID esteja entre 5 e 15.
select avg(Quantity) as 'Média onde ID produto entre 5 e 15'
from OrderDetail
where ProductID between 5 and 15;

-- 9. Calcular a média de Quantity para registros onde OrderID termine com o dígito 0.
select avg(Quantity) as 'Média onde ID pedido termina com 0'
from OrderDetail
where OrderID like '%0';

-- 10. Calcular a média de Quantity onde OrderDetailID esteja entre 10 e 30.
select avg(Quantity) as 'Média onde ID detalhe entre 10 e 30'
from OrderDetail
where OrderDetailID between 10 and 30;

-- 11. Escreva um comando para calcular a média da coluna Quantity somente para as linhas onde a quantidade seja maior que 25.
select avg(Quantity) as 'Média onde quantidade > 25'
from OrderDetail
where Quantity > 25;

-- 12. Calcule a média da coluna Quantity considerando somente os registros onde a quantidade seja menor que 10.
select avg(Quantity) as 'Média onde quantidade < 10'
from OrderDetail
where Quantity < 10;

-- 13. Determine a média da coluna Quantity para os registros onde o ProductID seja maior que 7.
select avg(Quantity) as 'Média onde ID produto > 7'
from OrderDetail
where ProductID > 7;

-- 14. Qual é a média da coluna Quantity para os registros com OrderID menor que 20?
select avg(Quantity) as 'Média onde ID pedido < 20'
from OrderDetail
where OrderID < 20;

-- 15. Filtre os registros onde a quantidade é divisível por 5 e calcule a média de Quantity.
select avg(Quantity) as 'Média onde quantidade divisível por 5'
from OrderDetail
where Quantity % 5 = 0;

-- 16. Escreva um comando SQL para calcular a média de Quantity somente para os registros com ProductID menor que 12.
select avg(Quantity) as 'Média onde ID produto < 12'
from OrderDetail
where ProductID < 12;

-- 17. Determine a média de Quantity para os registros onde o OrderID esteja entre 15 e 30.
select avg(Quantity) as 'Média onde ID pedido entre 15 e 30'
from OrderDetail
where OrderID between 15 and 30;

-- 18. Escreva uma query que calcule a média de Quantity para os registros onde o OrderDetailID comece com o dígito 2.
select avg(Quantity) as 'Média de quantidade onde ID do detalhe comece com 2'
from OrderDetail
where OrderDetailID like '2%';

-- 19. Calcule a média de Quantity para os registros onde o ProductID seja maior que 10.
select avg(Quantity) as 'Média onde ID produto > 10'
from OrderDetail
where ProductID > 10;

-- 20. Determine a média de Quantity para os registros com OrderID que tenham valores ímpares.
select avg(Quantity) as 'Média onde ID pedido é ímpar'
from OrderDetail
where OrderID % 2 != 0;

-- 21. Filtre os registros onde o ProductID seja divisível por 3 e calcule a média da coluna Quantity.
select avg(Quantity) as 'Média onde ID produto divisível por 3'
from OrderDetail
where ProductID % 3 = 0;

-- 22. Calcule a média da coluna Quantity para os registros com OrderDetailID maior que 30.
select avg(Quantity) as 'Média onde ID detalhe > 30'
from OrderDetail
where OrderDetailID > 30;

-- 23. Determine a média de Quantity somente para os registros onde a quantidade esteja entre 10 e 20.
select avg(Quantity) as 'Média onde quantidade entre 10 e 20'
from OrderDetail
where Quantity between 10 and 20;

-- 24. Escreva uma query que calcule a média de Quantity para os registros onde o OrderID termine com o número 5.
select avg(Quantity) as 'Média onde ID pedido termina com 5'
from OrderDetail
where OrderID like '%5';

-- 25. Calcule a média de Quantity somente para os registros onde o ProductID esteja nos valores 3, 5 ou 7
select avg(Quantity) as 'Média onde ID do produto = 3, 5 ou 7'
from OrderDetail
where ProductID in (3, 5, 7);

-- 26. Determine a média de Quantity para os registros onde a quantidade não esteja entre 15 e 25.
select avg(Quantity) as 'Média onde quantidade não esta entre 15 e 25'
from OrderDetail
where Quantity not between 15 and 25;

-- 27. Filtre os registros onde o ProductID esteja entre 5 e 15 e calcule a média de Quantity.
select avg(Quantity) as 'Média onde ID produto entre 5 e 15'
from OrderDetail
where ProductID between 5 and 15;

-- 28. Escreva um comando para calcular a média de Quantity somente para os registros onde o OrderID seja igual a 100.
select avg(Quantity) as 'Média onde ID pedido = 100'
from OrderDetail
where OrderID = 100;

-- 29. Filtre os registros com OrderDetailID entre 100 e 200 e calcule a média de Quantity.
select avg(Quantity) as 'Média onde ID detalhe entre 100 e 200'
from OrderDetail
where OrderDetailID between 100 and 200;

-- 30. Escreva uma query para calcular a média de Quantity considerando apenas as linhas onde a quantidade seja maior que 20.
select avg(Quantity) as 'Média onde quantidade > 20'
from OrderDetail
where Quantity > 20;

-- 31. Calcule a média de Quantity para os registros onde o ProductID não esteja nos valores 1, 2 ou 3.
select avg(Quantity) as 'Média onde ID produto não é 1, 2 ou 3'
from OrderDetail
where ProductID not in (1, 2, 3);

-- 32. Determine a média de Quantity para os registros onde o OrderDetailID termine com o número 2.
select avg(Quantity) as 'Média onde ID detalhe termina com 2'
from OrderDetail
where OrderDetailID like '%2';

-- 33. Escreva uma query que calcule a média de Quantity somente para os registros onde a quantidade seja um número par.
select avg(Quantity) as 'Média onde quantidade é par'
from OrderDetail
where Quantity % 2 = 0;

-- 34. Calcule a média de Quantity somente para os registros onde o OrderID seja maior que 200.
select avg(Quantity) as 'Média onde ID pedido > 200'
from OrderDetail
where OrderID > 200;

-- 35. Determine a média de Quantity para os registros onde o ProductID seja exatamente igual a 10.
select avg(Quantity) as 'Média onde ID produto = 10'
from OrderDetail
where ProductID = 10;

-- 36. Filtre os registros onde o OrderDetailID esteja entre 50 e 100 e calcule a média de Quantity.
select avg(Quantity) as 'Média onde ID detalhe entre 50 e 100'
from OrderDetail
where OrderDetailID between 50 and 100;

-- 37. Escreva uma query que calcule a média de Quantity para os registros onde o OrderID comece com o dígito 1.
select avg(Quantity) as 'Média onde ID do pedido começa com 1'
from OrderDetail
where OrderID like '1%';

-- 38. Calcule a média de Quantity para os registros onde o ProductID seja divisível por 5.
select avg(Quantity) as 'Média onde ID produto divisível por 5'
from OrderDetail
where ProductID % 5 = 0;

-- 39. Determine a média de Quantity para os registros onde a quantidade não esteja nos valores 5, 10 ou 15.
select avg(Quantity) as 'Média onde quantidade não é 5, 10 ou 15'
from OrderDetail
where Quantity not in (5, 10, 15);

-- 40. Escreva um comando para calcular a média de Quantity somente para os registros com OrderDetailID menores que 10.
select avg(Quantity) as 'Média onde ID detalhe < 10'
from OrderDetail
where OrderDetailID < 10;

-- 41. Calcule a média de Quantity para os registros onde o ProductID seja maior que 20.
select avg(Quantity) as 'Média onde ID produto > 20'
from OrderDetail
where ProductID > 20;

-- 42. Determine a média de Quantity para os registros onde a quantidade seja exatamente igual a 15.
select avg(Quantity) as 'Média onde quantidade = 15'
from OrderDetail
where Quantity = 15;

-- 43. Escreva uma query que calcule a média de Quantity para os registros com OrderDetailID iguais a 10, 20 ou 30.
select avg(Quantity) as 'Média onde ID detalhe é 10, 20 ou 30'
from OrderDetail
where OrderDetailID in (10, 20, 30);

-- 44. Filtre os registros onde a quantidade esteja entre 5 e 10 e calcule a média de Quantity.
select avg(Quantity) as 'Média onde quantidade entre 5 e 10'
from OrderDetail
where Quantity between 5 and 10;

-- 45. Escreva uma query para calcular a média de Quantity para os registros onde o OrderID não termine com o número 3.
select avg(Quantity) as 'Média onde ID do pedido não termina com 3'
from OrderDetail
where OrderID not like '%3';

-- 46. Determine a média de Quantity para os registros onde o ProductID seja maior que 30.
select avg(Quantity) as 'Média onde ID produto > 30'
from OrderDetail
where ProductID > 30;

-- 47. Calcule a média de Quantity considerando somente os registros onde o OrderID seja menor que 100.
select avg(Quantity) as 'Média onde ID pedido < 100'
from OrderDetail
where OrderID < 100;

-- 48. Escreva uma query que calcule a média de Quantity para os registros onde o ProductID esteja entre 10 e 50.
select avg(Quantity) as 'Média onde ID produto entre 10 e 50'
from OrderDetail
where ProductID between 10 and 50;

-- 49. Determine a média de Quantity para os registros onde a quantidade seja divisível por 4.
select avg(Quantity) as 'Média onde quantidade divisível por 4'
from OrderDetail
where Quantity % 4 = 0;

-- 50. Filtre os registros onde o OrderDetailID termine com o dígito 0 e calcule a média de Quantity.
select avg(Quantity) as 'Média onde ID detalhe termina com 0'
from OrderDetail
where OrderDetailID like '%0';