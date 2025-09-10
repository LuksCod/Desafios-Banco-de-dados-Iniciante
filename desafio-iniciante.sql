CREATE DATABASE Loja;
GO

USE Loja;
GO

CREATE TABLE Produto 
(
    id INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
    nome_produto VARCHAR(200) NOT NULL,
    valor_custo NUMERIC(6,2) NOT NULL,
    valor_venda NUMERIC(6,2) NOT NULL
);
GO

INSERT INTO Produto (nome_produto, valor_custo, valor_venda) 
VALUES
('Smartphone', 200, 400),
('Geladeira', 1500.00, 2200.00),
('Café', 25, 10),
('Micro-Ondas', 500.00, 450.00),
('Televisão 4K', 700.00, 1200.00),
('SmartWatch', 90.00, 150.00),
('Leite', 2, 5);
GO

UPDATE Produto
SET valor_venda = 15
WHERE nome_produto = 'Café';
GO

SELECT TOP 5 nome_produto, valor_venda
FROM Produto 
ORDER BY valor_venda DESC;
GO

DELETE FROM Produto
WHERE valor_venda < valor_custo;
GO

SELECT * FROM Produto;
GO
