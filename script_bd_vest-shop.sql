CREATE TABLE usuario(

  id_usuario SERIAL PRIMARY KEY,

  nome                              varchar(100) not null,
  email                             varchar(100) not null,
  senha_hash                        varchar(20) not null,
  data_nascimento                   date not null,
  eh_maior_idade                    boolean not null,
  tipo_perfil                       varchar(255) not null,
  participa_programa_fidelidade     boolean,
  data_cadastro                     timestamp

);


SELECT * FROM usuario;


INSERT INTO usuario (nome, email, senha_hash, data_nascimento, eh_maior_idade, participa_programa_fidelidade, data_cadastro) VALUES ('Gabriel', 'Gabriel@gmail.com', '12345678945987#@%098', '07/04/2000', 'sim', 'sim', '08/12/2024');

CREATE TABLE produto(

  id_produto SERIAL PRIMARY KEY,

  id_anunciante   int not null,
  nome     varchar(150) not null,
  marca    varchar(100) not null,
  descricao             text,
  tamanho               varchar(10) not null,
  genero_indicado       varchar(20),
  estilo                varchar(15) not null,
  preco_base_brl        decimal(10,2) not null,
  quantidade_estoque    int not null,
  status                varchar(50) not null,
  data_cadastro         timestamp

);

SELECT * FROM produto;

INSERT INTO produto (nome, id_anunciante, marca, descricao, tamanho, genero_indicado, estilo, preco_base_brl, quantidade_estoque, status, data_cadastro) VALUES ('Gabriel', '112345678', 'nike', 'gosto da nike', 'M', 'masculino', 'radical', 'R$100.00', '20', 'valioso', '2026/05/30');

