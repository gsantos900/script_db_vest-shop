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


INSERT INTO usuario (nome, email, senha_hash, data_nascimento, eh_maior_idade, tipo_perfil, tipo_notificacao, participa_programa_fidelidade, data_cadastro) VALUES ('Gabriel', 'Gabriel@gmail.com', '12345678945987#@%098', '2000/07/04', 'true', 'admim', 'sms', 'false', '2020/05/03');

INSERT INTO usuario (nome, email, senha_hash, data_nascimento, eh_maior_idade, tipo_perfil, tipo_notificacao, participa_programa_fidelidade, data_cadastro) VALUES ('isabely', 'isbelly@gmail.com', '032678962@#$', '2000/07/04', 'true', 'cliente' 'sms', 'true', '2021/03/02');

INSERT INTO usuario (nome, email, senha_hash, data_nascimento, eh_maior_idade, tipo_perfil, tipo_notificacao, participa_programa_fidelidade, data_cadastro) VALUES ('pedro', 'pedro@gmail.com', '9843659034557', '2000/07/04', 'true', 'cliente', 'sms', 'true', '2022/12/22');

CREATE TABLE produto(

  id_produto SERIAL PRIMARY KEY,

  id_anunciante         int not null,
  nome                  varchar(150) not null,
  marca                 varchar(100) not null,
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

INSERT INTO produto (nome, marca, tamanho, genero_indicado, estilo, preco_base_brl, quantidade_estoque, status) VALUES ('Arthur Renato Lima', '', '', '', '', '', '', '', '');

INSERT INTO produto (nome, marca, tamanho, genero_indicado, estilo, preco_base_brl, quantidade_estoque, status) VALUES ('Flávia Valentina da Silva', '', '', '', '', '', '', '', '');

INSERT INTO produto (nome, marca, tamanho, genero_indicado, estilo, preco_base_brl, quantidade_estoque, status) VALUES ('Thomas Breno Nathan de Paula', '', '', '', '', '', '', '', '');

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

INSERT INTO pedido (codigo_moeda_utilizada, valor_subtotal, valor_frete, cep_destino, status, isento_frete, regiao_metropolitana, data_pedido) VALUES ('R$', '100.00', '14.00', '68928-048', 'Saiu para Entrega', 'true', 'false', '2022/12/04');

INSERT INTO pedido (codigo_moeda_utilizada, valor_subtotal, valor_frete, cep_destino, status, isento_frete, regiao_metropolitana, data_pedido) VALUES ('R$', '100.00', '17.00', '39804-242', 'Entregue', 'true', 'true', '2023/02/10');

INSERT INTO pedido (codigo_moeda_utilizada, valor_subtotal, valor_frete, cep_destino, status, isento_frete, regiao_metropolitana, data_pedido) VALUES ('R$', '100.00', '19.00', '67429-343', 'Enviado / Em Trânsito', 'false', 'false', '2024/05/03');

CREATE TABLE notificacao_sistema(

 id_notificacao SERIAL PRIMARY KEY,

 fk_usuario               int not null,
 tipo_notificacao         varchar(50) not null,
 titulo                   varchar(150) not null,
 mensagem                 text not null,
 canal                    varchar(20) not null,
 status                   varchar(255) not null, 
 opt_out_respeitado       boolean,
 data_envio               timestamp
);

SELECT * FROM pedido;

INSERT INTO pedido (tipo_notificacao, titulo, mensagem, canal, status, opt_out_respeitado, data_envio) VALUES ('emergencia', 'O seu pagamento do pedido #1234 foi processado com sucesso.', 'Pagamento Aprovado', 'Relatórios semanais, faturas, redefinições de senha.', 'Senha Alterada', 'true', '2025/03/12');

INSERT INTO pedido (tipo_notificacao, titulo, mensagem, canal, status, opt_out_respeitado, data_envio) VALUES ('emergencia', 'O seu pagamento do pedido #1234 foi processado com sucesso.', 'Pagamento Aprovado', 'Relatórios semanais, faturas, redefinições de senha.', 'Senha Alterada', 'true', '2025/03/12');

INSERT INTO pedido (tipo_notificacao, titulo, mensagem, canal, status, opt_out_respeitado, data_envio) VALUES ('emergencia', 'O seu pagamento do pedido #1234 foi processado com sucesso.', 'Pagamento Aprovado', 'Relatórios semanais, faturas, redefinições de senha.', 'Senha Alterada', 'true', '2025/03/12');

CREATE TABLE denuncia_produto( 
  id_denuncia_produto SERIAL PRIMARY KEY, 
   fk_produto       int not null,
   id_denuncia      int not null,
   motivo_denuncia  text not null,
   evidencia_url    varchar(255),
   status           varchar(255) not null,
   data_denuncia    timestamp
);

SELECT * FROM denuncia_produto;

INSERT INTO denuncia_produto(motivo_denuncia, evidencia_url, status, data_denuncia) VALUES ('fraude', 'fotos', 'falsifição', '2025/05/30');

INSERT INTO denuncia_produto(motivo_denuncia, evidencia_url, status, data_denuncia) VALUES ('fraude', 'fotos', 'falsifição', '2025/05/30');

INSERT INTO denuncia_produto(motivo_denuncia, evidencia_url, status, data_denuncia) VALUES ('fraude', 'fotos', 'falsifição', '2025/05/30');

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

INSERT INTO perfil_preferencias_cliente( genero, tamanho_habitual,  estilo_predominante, orcamento_medio,) VALUES ('-', '', '', '');

CREATE TABLE item_pedido (
  id_item_pedido SERIAL PRIMARY KEY,
  id_pedido                        INT not null,
  id_produto                       INT not null,
  quantidade                       INT not null,
  preco_unitario_moeda_local       DECIMAL(10,2)
);
SELECT*FROM item_pedido


INSERT INTO item_pedido(id_pedido, id_produto)VALUES ('', '', '', '', '');

CREATE TABLE log_auditoria_banimento (
  id_log SERIAL PRIMARY KEY,
  id_anunciante_banido                    INT not null,
  id_gestor_responsavel                   INT not null,
  motivo_banimento                        INT not null,
  quantidade_evidencias_confirmadas       INT not null,
  saldo_retido_ressarcimento              DECIMAL(10,2),
  data_ultima_atualizacao                 timestamp
);
SELECT*FROM log_auditoria_banimento


INSERT INTO log_auditoria_banimento(id_anunciante_banido, id_gestor_responsavel, data_ultima_atualizacao)VALUES ('', '', '', '', '');





