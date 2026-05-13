create database catalogacao_e_emprestimos; -- Criando a DataBase

use catalogacao_e_emprestimos; -- Usando a DataBase criada

-- Criação das tabelas:

create table Employees ( -- Criando a tabela de empregados
	EmployeeID int auto_increment primary key,
    Notes varchar(500),
    LastName varchar(100),
    FirstName varchar(100),
    BirthDate date,
    Photo blob
);

create table Shippers ( -- Criando a tabela de entregadores
	ShipperID int auto_increment primary key,
    ShipperName varchar(100),
    Phone varchar(13)
);

create table CostumersAddress ( -- Criando a tabela de endereços de clientes
	CostumerAddressID int auto_increment primary key,
	Street varchar(100),
    CostumerNumber int,
    Complement varchar(100),
    City varchar(100),
    PostalCode varchar(8),
    Country varchar(100)
);

create table Costumers ( -- Criando a tabela de clientes
	CostumerID int auto_increment primary key,
    CostumerName varchar(300),
    ContactName varchar(100),
    CostumerAddressID int,
    foreign key (CostumerAddressID) references CostumersAddress (CostumerAddressID)
);

create table Orders ( -- Criando a tabela de pedidos
	OrderID int auto_increment primary key,
    CostumerID int,
    foreign key (CostumerID) references Costumers (CostumerID),
    EmployeeID int,
    foreign key (EmployeeID) references Employees (EmployeeID),
    ShipperID int,
    foreign key (ShipperID) references Shippers (ShipperID),
    OrderDate date
);

create table Categories ( -- Criando a tabela de categorias
	CategoryID int auto_increment primary key,
    CategoryName varchar(300),
    CategoryDescription varchar(500)
);

create table SupplierAddress ( -- Criando a tabela de endereços dos fornecedores
	SupplierAddressID int auto_increment primary key,
    Street varchar(100),
    CostumerNumber int,
    Complement varchar(100),
    City varchar(100),
    PostalCode varchar(8),
    Country varchar(100)
);

create table Suppliers ( -- Criando a tabela  de fornecedores
	SupplierID int auto_increment primary key,
    SupplierName varchar(300),
    ContactName varchar(100),
    Phone varchar(13),
    SupplierAddressID int,
    foreign key (SupplierAddressID) references SupplierAddress (SupplierAddressID)
);

create table Products ( -- Criando a tabela de produtos
	ProductID int auto_increment primary key,
    ProductName varchar(150),
    SupplierID int,
    foreign key (SupplierID) references Suppliers (SupplierID),
    CategoryID int,
    foreign key (CategoryID) references Categories (CategoryID),
    Unit int,
    Price float
);

create table OrderDetail ( -- Criando  a tabela de detalhes do pedido
	OrderDetailID int auto_increment primary key,
    OrderID int,
    foreign key (OrderID) references Orders (OrderID),
    ProductID int,
    foreign key (ProductID) references Products (ProductID),
    Quantity int
);

-- Inserts:

-- 1. Categorias
insert into Categories (CategoryName, CategoryDescription) 
values
('Ação e Hack and Slash', 'Jogos com combate frenético e combos'),
('Soulslike', 'Jogos de ação e RPG com alta dificuldade'),
('Aventura e Exploração', 'Jogos focados em narrativa, sobrevivência e exploração'),
('Hardware - Processadores', 'CPUs para desktops e notebooks'),
('Hardware - Placas de Vídeo', 'GPUs para renderização e jogos'),
('Monitores', 'Telas com alta taxa de atualização'),
('Periféricos', 'Teclados, mouses e acessórios diversos');

-- 2. Endereços (Clientes)
insert into CostumersAddress (Street, CostumerNumber, Complement, City, PostalCode, Country) 
values
('Rua das Acácias', 120, 'Apto 401', 'Belo Horizonte', '30110916', 'Brasil'),
('Av. Paulista', 1500, 'Conjunto 12', 'São Paulo', '01310100', 'Brasil'),
('Rua do Sol', 45, NULL, 'Contagem', '32000000', 'Brasil'),
('Av. Afonso Pena', 2300, 'Bloco B', 'Belo Horizonte', '30130000', 'Brasil'),
('Rua das Flores', 789, 'Casa', 'Betim', '32600000', 'Brasil'),
('Av. das Américas', 5000, 'Sala 101', 'Rio de Janeiro', '22640100', 'Brasil');

-- 3. Endereços (Fornecedores)
insert into SupplierAddress (Street, CostumerNumber, Complement, City, PostalCode, Country) 
values
('Rua Santa Ifigênia', 200, 'Galeria', 'São Paulo', '01207000', 'Brasil'),
('Av. Industrial', 1000, 'Galpão 4', 'Curitiba', '80000000', 'Brasil'),
('Polo Tecnológico', 55, 'Lote 2', 'Campinas', '13000000', 'Brasil');

-- 4. Funcionários
INSERT INTO Employees (FirstName, LastName, BirthDate, Notes) 
values
('Michel', 'Silva', '2000-05-15', 'Foco em otimização e arquitetura de sistema.'),
('Roberto', 'Almeida', '1985-03-22', 'Especialista em banco de dados e normalização.'),
('Carla', 'Mendes', '1992-11-10', 'Responsável pelo setor de logística e envios.'),
('Fernanda', 'Costa', '1998-07-05', 'Atendimento ao cliente e suporte técnico.');

-- 5. Transportadores (Shippers)
insert into Shippers (ShipperName, Phone) 
values
('Logística Expressa BR', '11988887777'),
('Transportes Rápidos', '31977776666'),
('Correios Sedex', '08007250100'),
('Total Lógica', '41999998888');

-- 6. Fornecedores
INSERT INTO Suppliers (SupplierName, ContactName, Phone, SupplierAddressID) 
values
('Tech Distribuidora', 'Marcos Vinícius', '1133334444', 1),
('GamersCorp', 'Luciana Silva', '4132221111', 2),
('Hardware Importações', 'João Batista', '1934445555', 3);

-- 7. Clientes
insert into Costumers (CostumerName, ContactName, CostumerAddressID) 
VALUES 
('Lucas Pereira', 'Lucas', 1),
('Juliana Martins', 'Ju', 2),
('Rafael Souza', 'Rafa', 3),
('Amanda Nogueira', 'Amanda', 4),
('Felipe Castro', 'Felipão', 5),
('Patrícia Gomes', 'Paty', 6);

-- 8. Produtos (Catálogo massivo)
INSERT INTO Products (ProductName, SupplierID, CategoryID, Unit, Price) 
values
('Devil May Cry 5', 2, 1, 45, 99.90),
('Mortal Shell', 2, 2, 30, 55.00),
('Rise of the Tomb Raider', 2, 3, 25, 79.90),
('Processador Intel Core i5-10400F', 3, 4, 15, 650.00),
('Placa de Vídeo GTX 1650 4GB', 3, 5, 20, 950.00),
('Monitor Gamer 144Hz 24"', 1, 6, 10, 1100.00),
('Teclado Mecânico ABNT2', 1, 7, 50, 250.00),
('Mouse Gamer 10000 DPI', 1, 7, 80, 150.00),
('Placa de Vídeo RTX 4060 8GB', 3, 5, 5, 2200.00),
('Elden Ring', 2, 2, 60, 249.90),
('Sekiro: Shadows Die Twice', 2, 1, 15, 199.00),
('Headset Gamer 7.1 Surround', 1, 7, 35, 320.00),
('SSD NVMe M.2 1TB', 3, 4, 100, 450.00),
('Processador AMD Ryzen 5 5600', 3, 4, 12, 850.00),
('Cadeira Ergonômica', 1, 7, 8, 1500.00);

-- 9. Pedidos (Orders)
insert into Orders (CostumerID, EmployeeID, ShipperID, OrderDate) 
values
(1, 1, 1, '2026-03-01'),
(2, 3, 2, '2026-03-05'),
(3, 1, 3, '2026-03-10'),
(4, 4, 1, '2026-03-15'),
(5, 2, 4, '2026-03-20'),
(6, 1, 2, '2026-03-22'),
(1, 3, 3, '2026-03-25'),
(2, 4, 1, '2026-03-28'),
(3, 2, 4, '2026-04-02'),
(4, 1, 2, '2026-04-05');

-- 10. Detalhes do Pedido (OrderDetail) com a coluna Quantity inclusa
insert into OrderDetail (OrderID, ProductID, Quantity) 
values
(1, 1, 1),  -- Pedido 1 levou 1x Devil May Cry 5
(1, 7, 1),  -- Pedido 1 levou 1x Teclado Mecânico
(2, 5, 2),  -- Pedido 2 levou 2x GTX 1650
(3, 2, 1),  -- Pedido 3 levou 1x Mortal Shell
(3, 6, 1),  -- Pedido 3 levou 1x Monitor 144Hz
(4, 3, 1),  -- Pedido 4 levou 1x Rise of the Tomb Raider
(4, 8, 1),  -- Pedido 4 levou 1x Mouse Gamer
(5, 4, 1),  -- Pedido 5 levou 1x Core i5-10400F
(5, 13, 2), -- Pedido 5 levou 2x SSD 1TB
(6, 10, 1), -- Pedido 6 levou 1x Elden Ring
(7, 11, 1), -- Pedido 7 levou 1x Sekiro
(8, 9, 1),  -- Pedido 8 levou 1x RTX 4060
(9, 14, 1), -- Pedido 9 levou 1x Ryzen 5
(9, 12, 1), -- Pedido 9 levou 1x Headset 7.1
(10, 15, 1); -- Pedido 10 levou 1x Cadeira