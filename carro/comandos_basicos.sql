MySQL - Comandos básicos

# ++++++++ Acessando banco como root:
mysql -u root -p

# ++++++++ Criando base de dados teste_tonny:
create DATABASE teste_tonny;

# ++++++++ Selecionar banco:
USE teste_tonny;
# ++++++++ Mostrar tabelas:
show tables;

# ++++++++ Criando tabela:
create TABLE Cidades (
id_cidades smallint NOT NULL,
cidade varchar(100) NOT NULL,
id_estados varchar(25) NOT NULL,
id_paises varchar(25) NOT NULL,
primary key(id_cidades)
);

# ++++++++ Visualizar colunas da tabela:
DESC Cidades;

# ++++++++ Inserindo coluna na tabela:
ALTER TABLE Cidades ADD Estados varchar(25);

# ++++++++ Remover chave primária da tabela:
ALTER TABLE Cidades DROP primary key;

# ++++++++ Inserindo chave primária na tabela:
ALTER TABLE Cidades ADD PRIMARY KEY(id_cidades);

# ++++++++ Renomear coluna:
ALTER TABLE Cidades CHANGE cidades Nome varchar(25);

# ++++++++ Modificar definições de uma coluna:
ALTER TABLE Cidades MODIFY cidade varchar(50);

# ++++++++ Excluir linha da tabela usando id:
delete from Cidades where id  = 22

# ++++++++ Excluir coluna da tabela:
ALTER TABLE Cidades DROP Estados;

# ++++++++ Renomear tabela:
RENAME TABLE Cidades TO novo_nome_tabela;

# ++++++++ Deletar uma tabela:
DROP TABLE localizacao;

# ++++++++ Deletar uma base de dados:
DROP DATABASE teste_tonny;

# ++++++++ Alterar linhas em uma tabela:
update Cidades set Estados_id = 2  where id = 7;

# ++++++++ Alterar dados de uma coluna inteira de uma vez:
update Estados set pais_id = 1;

# ++++++++ LISTAR dados de uma tabela por ID:
SELECT * FROM cidades WHERE estado_id = 4;

# ++++++++ criando uma foreign key entre duas tabelas(referenciado na tabela estados a coluna pais_id) vinculou tabela paises (paises(id)):
alter table estados add foreign key (pais_id) references paises(id);

# ++++++++ selecionando tabelas com vinculos foreign key:
select table_name, column_name, referenced_table_name, referenced_column_name from information_schema.key_column_usage where referenced_table_name is not null;

Ver versão MYSQL: SELECT VERSION(), CURRENT_DATE;

# +=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=+
> show databases; /* exibir as bases de dados */
> USE nome_da_database; /* usar a base de dados */
> SHOW tables; /* mostrar as tabelas */
> SELECT * FROM nome_da_tabela ORDER BY id DESC limit 10; /* selecionar as 10 últimas linhas */
> SELECT count(1) FROM nome_da_tabela; /* informa o número de linhas da tabela */
> SELECT round(3.14159,2); /* arredonda o número para duas casas decimais */
> DELETE FROM nome_da_tabela WHERE definição_where; /* excluir linha que contenha a condição "definição_where" */
> UPDATE nome_da_tabela SET campo1 = valor1, campo2 = valor2;
> TRUNCATE table 'NomeDaTabela'; /* joga fora tabela zerando id mas sem jogar estrutura fora */
> SHOW FIELDS FROM nome_da_tabela; /* exibir estrutura da tabela */
> DESCRIBE nome_da_tabela; /* exibir estrutura da tabela */
> ALTER TABLE nome_da_table RENAME novo_nome; /* renomeia tabela */
> UNNEST(datas) /* expandir um array para um conjunto de linhas */
> EXTRACT('month' FROM unnest(datas)) /* retornar uma única parte de uma data / hora, como ano, mês, dia, hora, minuto, etc */
> UNNEST(datas)::date /* a sintaxe de dois pontos dobrados "::" serve para conversão de tipo; no caso, transforma em "date" */
> SELECT * FROM table WHERE data >= DATE_SUB(NOW(), INTERVAL 1 HOUR); /* Selecionar os dados da última hora*/
> SELECT * FROM nome_da_tabela group by data having count(*) >= 2; /* verifica se tem linhas com a mesma data, duplicadas */
# +=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=++=+=+=+
Especificando condições para a pesquisa: where

A cláusula where especifica a condição da pesquisa. Abaixo segue uma tabela com os operadores mais usados com where:

    = - Testa se dois valores são iguais. Exemplo de uso: nrcliente = 154
    > - Testa se um valor é maior que outro. Exemplo de uso: quantidade > 100
    < - Testa se um valor é menor que outro. Exemplo de uso: quantidade < 100
    <= - Testa se um valor é menor ou igual a outro. Exemplo de uso: quantidade <= 100
    != ou < > - Testa se dois valores são diferentes. Exemplo de uso: quantidade != 0
    is not null - Testa se um campo não está vazio. Exemplo de uso: endereco is not null
    is null - Testa se um campo está vazio(nulo, ou seja, nada foi inserido nele, nem um espaço em branco). Exemplo de uso: endereco is null
    between - Testa se um valor está entre um valor mínimo(inclusive) e um valor máximo (inclusive). Exemplo de uso: quantidade between 0 and 100
    in - Testa se um valor pertence a um conjunto. Exemplo de uso: cidade in ("Recife","Olinda","Caruaru")
    not in - Testa se um valor não pertence a um conjunto. Exemplo de uso: cidade not in ("Recife","Olinda","Caruaru")
    like - Testa se um valor corresponde a um padrão (% equivale ao conhecido *, é o curinga). Exemplo de uso: nome like ("Samuel%")
    not like - Testa se um valor não corresponde a um padrão ( _ equivale ao curinga que corresponde a um caracter). Exemplo de uso: nome not like ("Samuel_")
    regexp - Testa se um valor corresponde a uma expressão regular. Exemplo de uso: nome regexp

 Logotipo BloGalizado

    Agenda
    Cloude
    Desenvolvimento
    Marketing Digital
    Software Livre
    UI

Banco de Dados MySQL – Primeiros Passos
19 de outubro de 2011 | Postado por Evandro Klimpel Balmant | Twitter | Google+ | 3 Comentários
Tweet

  inShare

O objetivo deste artigo é apresentar conhecimentos básicos sobre banco de dados, com um pequeno tutorial recomendado para iniciantes. Usarei MySQL para os exemplos que é hoje o banco mais usado na internet, a grande maioria dos sites, blogs, e lojas virtuais usam o MySQL, não que ele seja a melhor opção mas por ser a mais popular será esse o abordado.

O MySQL é um SGBD (Sistema Gerenciador de Banco de Dados), que é capaz de gerenciar múltiplos bancos de dados independentes, cada banco de dados pode ser composto por tabelas, views, stored procedures, triggers e functions. Uma tabela contém um conjunto de características para armazenar os registros, essas características são tipadas de forma que o dado a ser inserido na tabela deva ser do tipo correspondente ao que foi definido para a coluna.

Instalação
Para usuário de GNU/Linux o processo de instalação é muito simples, execute o comando:
1

$ sudo apt-get install mysql-server mysql-client

Durante a instalação aparecerá uma janela de solicitação de senha (Eu por comodismo sempre uso “root”, na minha máquina local é claro).

Para usuários de Windows, se ja tem o WAMP instalado, basta, pois ele tem um terminal chamado “MySQL Console”, é por esse terminal que faremos todas as consultas. Caso você ainda não tenha faça o download pelo site http://dev.mysql.com/downloads/.

Escolhi montar esse tutorial usando o console como interface para que iniciantes não associem banco de dados com alguma ferramenta automatizada, o objetivo é repassar conhecimentos básicos, portanto se você executar em modo console irá conseguir usar seus conhecimentos em qualquer outra ferramenta.

Iniciando
Para iniciar o MySQL em modo console abra o terminar do ser sistema operacional e digite:

$ mysql -u root -p

Onde “root” é o nome de usuário que você iniciará a sessão, após executar esse comando o terminal solicitará uma senha.

Passado essa etapa o terminal irá apresentar o cursor aguardando um novo comando, mas dessa vez são comandos de SQL válidos para o MySQL.

Para visualizar todos os bancos de dados do seu servidor MySQL execute:

SHOW DATABASES;

O terminal deverá exibir uma listagem dos bancos atuais, como no exemplo abaixo:

+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| phpmyadmin         |
+--------------------+

Criando seu primeiro banco de dados
Para criar um novo banco de dados execute o comando:

CREATE DATABASE nomebanco;

Liste novamente os bancos de dados para conferir se o seu ja aparece.

SHOW DATABASES;

+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| nomebanco          |
| phpmyadmin         |
+--------------------+

Ok, banco de dados criado agora podemos começar a manipular dados, mas antes precisamos informar para o terminal qual é o banco de dados que iremos trabalhar, para isso execute o comendo:

USE nomebanco;

Se aparecer a mensagem: “Database changed” esta tudo certo, agora sim podemos continuar.

Tabelas
Criar uma tabela:

CREATE TABLE nometabela (
   id INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR(100) NOT NULL,
   sexo ENUM('m','f') DEFAULT 'm',
   data DATE,
   descricao TEXT,
   salario DECIMAL(10,2)
);

Nesse exemplo foi criada uma tabela fictícia com algumas colunas de tipos diferentes de dados, apenas para demonstrar a aplicabilidade de alguns desses tipos, recomendo que você consulte da documentação do banco de dados que for trabalhar para identificar quais os tipos de dados suportados.

Para visualizar as tabelas de um banco de dados:

SHOW TABLES;

+---------------------+
| Tables_in_nomebanco |
+---------------------+
| nometabela          |
+---------------------+

Para visualizar a descrição da uma tabela execute a query:

DESC nometabela;

+-----------+---------------+------+-----+---------+----------------+
| Field     | Type          | Null | Key | Default | Extra          |
+-----------+---------------+------+-----+---------+----------------+
| id        | int(11)       | NO   | PRI | NULL    | auto_increment |
| nome      | varchar(100)  | NO   |     | NULL    |                |
| sexo      | enum('m','f') | YES  |     | m       |                |
| data      | date          | YES  |     | NULL    |                |
| descricao | text          | YES  |     | NULL    |                |
| salario   | decimal(10,2) | YES  |     | NULL    |                |
+-----------+---------------+------+-----+---------+----------------+

Inserir registros
1
2

INSERT INTO nometabela (nome, sexo, data, descricao, salario) VALUES ('Joãozinho','m','1985-04-29','blablabla','999.99');
INSERT INTO nometabela (nome, sexo, data, descricao, salario) VALUES ('Mariazinha','f','1984-06-18','nonono','1234.99');

Consultar registros
Para retornar todas as colunas de uma tabela você pode usar o seletor * (asterisco), como no exemplo abaixo.

SELECT * FROM nometabela;

+----+------------+------+------------+-----------+---------+
| id | nome       | sexo | data       | descricao | salario |
+----+------------+------+------------+-----------+---------+
|  1 | Joãozinho | m    | 1985-04-29 | blablabla |  999.99 |
|  2 | Mariazinha | f    | 1984-06-18 | nonono    | 1234.99 |
+----+------------+------+------------+-----------+---------+

Se quiser exibir os registros de forma linear execute sua query com um “\G”:

SELECT * FROM nometabela \G;
0
*************************** 1. row ***************************
       id: 1
     nome: Joãozinho
     sexo: m
     data: 1985-04-29
descricao: blablabla
  salario: 999.99
*************************** 2. row ***************************
       id: 2
     nome: Mariazinha
     sexo: f
     data: 1984-06-18
descricao: nonono
  salario: 1234.99

Evite usar sempre o * (asterisco) por questões de performance do seu banco de dados. Realize suas consultas informando quais as colunas você precisa.

SELECT nome, salario FROM nometabela;

+------------+---------+
| nome       | salario |
+------------+---------+
| Joãozinho |  999.99 |
| Mariazinha | 1234.99 |
+------------+---------+

Você também pode adicionar filtros na consulta, como por exemplo:

Registros que contenham nome “Maria”:

SELECT * FROM nometabela WHERE nome LIKE '%Maria%';

+----+------------+------+------------+-----------+---------+
| id | nome       | sexo | data       | descricao | salario |
+----+------------+------+------------+-----------+---------+
|  2 | Mariazinha | f    | 1984-06-18 | nonono    | 1234.99 |
+----+------------+------+------------+-----------+---------+

Registros do sexo masculino:

SELECT * FROM nometabela WHERE sexo = 'm';

+----+------------+------+------------+-----------+---------+
| id | nome       | sexo | data       | descricao | salario |
+----+------------+------+------------+-----------+---------+
|  1 | Joãozinho | m    | 1985-04-29 | blablabla |  999.99 |
+----+------------+------+------------+-----------+---------+

Registros com salário maior que 1000:

SELECT * FROM nometabela WHERE salario > 1000;

+----+------------+------+------------+-----------+---------+
| id | nome       | sexo | data       | descricao | salario |
+----+------------+------+------------+-----------+---------+
|  2 | Mariazinha | f    | 1984-06-18 | nonono    | 1234.99 |
+----+------------+------+------------+-----------+---------+

Registros com data entre um período:

SELECT * FROM nometabela WHERE data BETWEEN '1985-04-20' AND '1985-04-30';

+----+------------+------+------------+-----------+---------+
| id | nome       | sexo | data       | descricao | salario |
+----+------------+------+------------+-----------+---------+
|  1 | Joãozinho | m    | 1985-04-29 | blablabla |  999.99 |
+----+------------+------+------------+-----------+---------+

Registros com descrição diferente de vazio:


SELECT * FROM nometabela WHERE descricao <> NULL;

Ou


SELECT * FROM nometabela WHERE descricao IS NOT NULL;

Contagem do total de registros na tabela:


SELECT COUNT(*) AS quantidade FROM nometabela;

+------------+
| quantidade |
+------------+
|          2 |
+------------+

Listar 1 registro de forma aleatória:


SELECT * FROM nometabela ORDER BY RAND() LIMIT 1;

Alterar registros
Para


UPDATE nometabela SET nome = 'Joãozinho da Silva' WHERE id = 1;

Apagar Registros


DELETE FROM nometabela WHERE id = 1;

Resetar uma tabela
Caso precise limpar totalmente uma tabela e reiniciar o contador do auto_increment use o comando TRUNCATE.


TRUNCATE nometabela;

Excluir um banco de dados

DROP DATABASE nomebanco;

Para sair do modo console do MySQL digite: exit;

Realizar Backup do banco de dados


$ mysqldump -u root -p nomebanco > caminho_destino

O parâmetro “caminho_destino” é o endereço local para onde o backup será gerado, pode ser por exemplo “/home/user/bkp_nomebanco.sql” para sistemas GNU/Linux ou “C:\\bkp_nomebanco.sql”.

Restaurar Backup do banco de dados


$ mysql -u root -p -D nomebanco < caminho_origem

O parâmetro “caminho_origem” é o endereço local de onde o arquivo de backup será restaurado.

É isso, por enquanto! são comandos básicos em SQL, essênciais para qualquer desenvolvedor, espero que tenha ajudado.