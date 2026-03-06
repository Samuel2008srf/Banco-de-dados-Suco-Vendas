# QUESTÃO 1
select nome, de_ferias, bairro from tabela_de_vendedores;
select * from tabela_de_vendedores where nome = 'Cláudia Morais' AND bairro = 'Jardins';
select * from tabela_de_vendedores;

# QUESTÃO 2
select * from tabela_de_vendedores where percentual_comissao > 0.10 AND de_ferias = 1;

# QUESTÃO 3
select * from notas_fiscais where matricula = '00237' OR data_venda = '2015-01-12';

-- Porque o CPF pode se repetir nessa tabela, já que uma nota fiscal pode ser emitida para o mesmo CPF várias vezes. Um cliente pode fazer uma compra várias vezes, sendo assim o seu CPF iria se repetir. Por conta disso o CPF não é uma chave primária na tabela de Notas_Fiscais, mas na tabela_de_clientes é, já que os clientes possuem apenas um cadastro e CPF são únicos, sendo assim, não é possível os CPFs se repetirem na tabela_de_clientes.--

# QUESTÃO 4
select * from itens_notas_fiscais;
select CODIGO_DO_PRODUTO, QUANTIDADE from itens_notas_fiscais where quantidade >= 99;
select CODIGO_DO_PRODUTO, QUANTIDADE, preco from itens_notas_fiscais where quantidade >= 99 AND preco > 44;
select * from tabela_de_produtos where CODIGO_DO_PRODUTO = 1022450;

-- É o produto código '1022450', nome 'Festival de Sabores - 2 Litros - Açai'. --

# QUESTÃO 5
select * from notas_fiscais WHERE numero = 102;
select * from tabela_de_clientes WHERE CPF = 8502682733;
select * from tabela_de_vendedores where matricula = 00236;
select * from itens_notas_fiscais WHERE numero = 102 AND quantidade = 84;
select * from tabela_de_produtos WHERE CODIGO_DO_PRODUTO = 1101035;

-- O Cliente é o Valdeci da Silva.--
-- A Vendedora é a Claudia Morais.--
-- O Produto é o 'Linha Refrescante - 1 Litro - Morango/Limão'.--