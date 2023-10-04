-- 1) Criar Banco de Dados.
CREATE DATABASE exercicio_crud_sql;

-- 1.2) Criar Tabela usuarios.
create table usuarios (
	id serial,
  	nome text not null,
  	idade smallint,
  	email varchar(50),
  	senha varchar(8) not null
);

-- 2) Inserir os registros.
INSERT INTO usuarios 
(nome, idade, email, senha)
VALUES 
('Aretha Montgomery', 30, 'augue.id.ante@odioAliquam.com', 'a0B13O3L'),
('Camden H. Bartlett', 15, 'turpis.vitae.purus@risusDuisa.ca', 'p3P96F3Q'),
('Raja W. Coffey',	30,	'raja.feugiat@nonummy.com',	's5F51T7L'),
('Elton D. Olsen',	29,	'auctor@duiFuscediam.edu',	'k5X25B0R'),
('Shelley E. Frederick',	20,	'raja.feugiat@nonummy.com',	'u2D18F6E');

-- 3) Atualizar registro.
UPDATE usuarios
SET  nome = 'Raja W. Coffey Thomas'
WHERE email = 'raja.feugiat@nonummy.com';

-- 4) Deletar e Alterar registros duplicados.

-- 4.1) Deletar registro.
DELETE FROM usuarios
WHERE idade = 20;

-- 4.2) Alterar tabela usuarios.
alter table usuarios 
add constraint email_unique_usuarios unique(email);

-- 5) Inserir mais registros.
INSERT INTO usuarios 
(nome, idade, email, senha)
VALUES 
('Jermaine G. Sellers', 16, 'ligula.Nullam@tortordictum.co.uk', 'o2P56U9U'),
('James D. Kennedy', 23, 'amet@Nulladignissim.com', 'q6B78V3V'),
('Amelia S. Harris',	29,	'nec.metus.facilisis@vitaealiquet.edu',	'l4S64Y3A'),
('Joel M. Hartman',	18,	'montes.nascetur@odiotristique.co.uk',	'c4Q27D7O'),
('Elmo K. Greer',	18,	'	risus.Duis@eget.ca',	'e3P92I7R');

-- 5.1) Incluir novo campo na tabela usuarios.
alter table usuarios add column situacao boolean default true;

-- 6) Inativar usuario.
UPDATE usuarios
SET situacao = false
WHERE email = 'montes.nascetur@odiotristique.co.uk';

-- 7) Alterar senha e campo da tabela usuarios.

-- 7.1) Alerar senha do registro de usuarios.
--UPDATE usuario
--SET senha = 'k9P31H1O'
--WHERE email = 'risus.Duis@eget.ca';


-- 7.2) Alterar campo na tabela usuarios.
alter table usuarios 
drop column idade, 
add column data_nascimento date;

-- 8) Atualizar campo data de nascimento.
UPDATE usuarios
SET data_nascimento =  '1991-09-29'
WHERE email = 'auctor@duiFuscediam.edu';

UPDATE usuarios
SET data_nascimento =  '1988-11-02'
WHERE email = 'nec.metus.facilisis@vitaealiquet.edu';

-- 9) Excluir todos registros sem data de nascimento.
DELETE FROM usuarios
WHERE data_nascimento IS NULL;

-- 9.1) Adicionar restricao ao campo data_nascimento para campo obrigatorio.
alter table usuarios alter column data_nascimento set not null;

-- 10) Cadastrar registros.
INSERT INTO usuarios 
(nome, data_nascimento, email, senha)
VALUES 
('Tate I. Dean', '1989-05-01', 'Nunc@etmagnis.edu', 'd3V25D6Y'),
('Arsenio K. Harmon', '1985-10-23', 'adipiscing.elit@turpis.com', 'm3T58S0C');


