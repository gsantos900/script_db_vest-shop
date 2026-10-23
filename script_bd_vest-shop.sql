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

CREATE TABLE pedido(

  id_pedido SERIAL PRIMARY KEY,

  id_comprador            int not null,
  codigo_moeda_utilizada  varchar(3)not null,
  valor_subtotal          decimal(10,2)not null,
  valor_frete             decimal(10,2)not null,
  isento_frete            boolean,
  cep_destino             varchar(8)not null,
  regiao_metropolitana    boolean,
  status                  varchar(255) null,
  data_pedido             timestamp
);

SELECT * FROM pedido;

INSERT INTO pedido (id_comprador, valor_subtotal, valor_frete, insento_frete, cep_destino, regiao_metropolitana, status, data_pedido) VALUES ('', '', '', '', '', '', '', '', '', '', '');

CREATE TABLE notificacao_sistema(

 id_notificacao SERIAL PRIMARY KEY,

 id_usuario               int not null,
 tipo_notificacao         varchar(50) not null,
 titulo                   varchar(150) not null,
 mensagem                 text not null,
 canal                    varchar(20) not null,
 status                   status_notificacao_enum not null, 
 opt_out_respeitado       boolean
 data_envio               timestamp
);

SELECT * FROM notificacao_sistema;

INSERT INTO notificacao_sistema (id_usuario, tipo_notificacao,  titulo, mensagem, canal, status, data_envio) VALUES ('', '', '', '', '', '', '', '', '', '', '');

CREATE TABLE denuncia_produto( 
  id_denuncia_produto SERIAL PRIMARY KEY, 
   fk_produto int,
   id_denuncia int,
   motivo_denuncia text,
   evidencia_url varchar(255),
   status varchar(255),
   data_denuncia timestamp
);

SELECT * FROM denuncia_produto;

INSERT INTO denuncia_produto(fk_produto, id_denuncia, motivo_denuncia,  evidencia_url, status, data_denuncia) VALUES ('', '', '', '', '', '', '');

CREATE TABLE perfil_preferencias_cliente( 
  
  id_perfil SERIAL PRIMARY KEY,
  fk_usuario int not null,
  genero varchar(20),
  faixa_etaria int,
  tamanho_habitual varchar(10),
  estilo_predominante varchar(255),
  orcamento_medio decimal(10,2),
  data_atualizacao timestamp
  );
  
SELECT * FROM  perfil_preferencias_cliente;

INSERT INTO perfil_preferencias_cliente( genero, faixa_etaria, estilo_predominante, tamanho_habitual,  estilo_preferencia, orcamento_medio, data_atualizacao) VALUES ('Masculino', '1.63', 'nike', '150.00', '05/03/2027',);

CREATE TABLE item_pedido (
  id_item_pedido SERIAL PRIMARY KEY,
  id_pedido                        INT not null,
  id_produto                       INT not null,
  quantidade                       INT not null,
  preco_unitario_moeda_local       DECIMAL(10,2)
);
SELECT*FROM item_pedido


INSERT INTO item_pedido(id_pedido, id_produto)VALUES ('', '', '', '', '');

