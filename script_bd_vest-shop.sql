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
