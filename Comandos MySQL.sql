create database ESCALADB;

use ESCALADB;

CREATE TABLE `escaladb`.`equipes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `escudo` VARCHAR(45) NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`));
  
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('BAHIA', 'bahia.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('BOTAFOGO', 'botafogo.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('CORINTHIANS', 'corinthians.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('CRUZEIRO', 'cruzeiro.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('FERROVIÁRIA', 'ferroviaria.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('MARINHA', 'marinha.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('GRÊMIO', 'gremio.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('INTERNACIONAL', 'internacional.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('KINDERMANN', 'kindermann.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('MINAS BRASÍLIA', 'minas-brasilia.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('NAPOLI', 'napoli.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('PALMEIRAS', 'palmeiras.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('REAL BRASÍLIA', 'real-brasilia.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('SANTOS', 'santos.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('SÃO JOSÉ', 'sao-jose.png', now(), now());
INSERT INTO equipes (nome, escudo, createdAt, updatedAt) VALUES ('SÃO PAULO', 'sao-paulo.png', now(), now());
    
CREATE TABLE `escaladb`.`jogadoras` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `posicao` VARCHAR(45) NULL,
  `equipeId` INT NOT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `equipeId_idx` (`equipeId` ASC) VISIBLE,
  CONSTRAINT `equipeId`
    FOREIGN KEY (`equipeId`)
    REFERENCES `escaladb`.`equipes` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANNA BEATRIZ', 'GOLEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA MENEZES', 'GOLEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MONIQUE', 'GOLEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NÁGILA', 'GOLEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NIELE', 'GOLEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BARBARA (DYMENOR)', 'LATERAL',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUANA', 'LATERAL',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NAEDJA (NINE)', 'LATERAL',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AILA', 'ZAGUEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CARLA', 'ZAGUEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NAINARA', 'ZAGUEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RUTE GONÇALVES', 'ZAGUEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SABRINA', 'ZAGUEIRA',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA ARAUJO', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CYNTHIA', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EDNOBREGA', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA CAROLINE', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FABIANA RAMOS', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABI BARROSO', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JAMILE', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JORDANA', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAYLANE', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MILENA BISPO', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TACIANA', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JOSEFA VICTORIA', 'MEIO CAMPO',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AÍSSA', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DAIANE MORETTI', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ELLEN SANTANA', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABRIELE DA SILVA', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GEISIANE OLIVEIRA', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PRISCILA EDITE', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ROQUELINE', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAMARA', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VERENA AMORIM', 'ATACANTE',1, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RUBI SUZIE', 'GOLEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LIVIA LEAL', 'GOLEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('INGRID SABINO', 'GOLEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAYARA SANTANA', 'GOLEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISABELLA SOARES', 'GOLEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CHAIANE LOCATELLI', 'LATERAL',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LAURA MARIN', 'LATERAL',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MYLENA SILVA', 'LATERAL',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA SOUZA', 'LATERAL',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL CARIOCA', 'ZAGUEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAMIRES ALVES', 'ZAGUEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AMANDA COSTA', 'ZAGUEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KÁREN BENDER', 'ZAGUEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SANDRA VIEIRA', 'ZAGUEIRA',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VALDIRENE (PEPÊ)', 'MEIO CAMPO',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DRIELY FERREIRA', 'MEIO CAMPO',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA CRISTINA', 'MEIO CAMPO',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('INGRID MICAELE', 'MEIO CAMPO',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VIVIAN CARDOSO', 'MEIO CAMPO',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABY LOUVAIN', 'MEIO CAMPO',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAÍSA ARRUDA', 'MEIO CAMPO',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAROL LINS', 'ATACANTE',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRENDA WOCH', 'ATACANTE',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EMILY ASSIS', 'ATACANTE',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KÉLEN BENDER', 'ATACANTE',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISABELLA RANGEL', 'ATACANTE',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAMILLA MORAIS', 'ATACANTE',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULIANA SILVA', 'ATACANTE',2, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAINA BORGES', 'GOLEIRA',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KEMELLI TRUGILHO', 'GOLEIRA',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PATY ARAUJO', 'GOLEIRA',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISA CRUZ', 'GOLEIRA',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KATIUSCIA', 'LATERAL',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PAULINHA', 'LATERAL',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('POLIANA', 'LATERAL',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAMIRES', 'LATERAL',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULIETE', 'LATERAL',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('YASMIM', 'LATERAL',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PARDAL', 'ZAGUEIRA',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GI CAMPIOLO', 'ZAGUEIRA',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ERIKA', 'ZAGUEIRA',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('INGRYD', 'MEIO CAMPO',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GRAZI', 'MEIO CAMPO',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DIANY', 'MEIO CAMPO',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ZANOTTI', 'MEIO CAMPO',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CACAU', 'MEIO CAMPO',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANDRESSINHA', 'MEIO CAMPO',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JHENIFFER', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABI NUNES', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MIRIÃ', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ADRIANA', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VIC ALBUQUERQUE', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABI PORTILHO', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CRIVELARI', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BIANCA GOMES', 'ATACANTE',3, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARY CAMILO', 'GOLEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DAFINY', 'GOLEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TATY SILVA', 'GOLEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JANAÍNA', 'LATERAL',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DAYANA (ESKERDINHA)', 'LATERAL',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('REBECA', 'LATERAL',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THALITA', 'LATERAL',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JAINI (JAJÁ)', 'ZAGUEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JÉSSICA ROMERO', 'ZAGUEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIANA (PIRES)', 'ZAGUEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAYARA', 'ZAGUEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAMIRYS', 'ZAGUEIRA',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA AMBROZIO', 'MEIO CAMPO',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL SHIMO', 'MEIO CAMPO',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISABELA (CAPELINHA)', 'MEIO CAMPO',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DELY LUCERO', 'MEIO CAMPO',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIA EDUARDA', 'MEIO CAMPO',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAYARA VAZ', 'MEIO CAMPO',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('STEPHANIE ZUNIGA', 'MEIO CAMPO',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL', 'ATACANTE',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIANA SANTOS', 'ATACANTE',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARÍLIA', 'ATACANTE',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PÂMELA', 'ATACANTE',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VANESSA', 'ATACANTE',4, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUCIANA', 'GOLEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUCILENE', 'GOLEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('YANNE', 'GOLEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BARRINHA', 'LATERAL',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAQUEL', 'LATERAL',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL TAVARES', 'LATERAL',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MONALISA', 'LATERAL',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DAIANE', 'LATERAL',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GESSICA', 'ZAGUEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CRISCIANE (ANNY)', 'ZAGUEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAYNARA', 'ZAGUEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUANA MENERGADO', 'ZAGUEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA ALICE', 'ZAGUEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('YASMIN COSMANN', 'ZAGUEIRA',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NICOLY', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AMANDA', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GRACIELA MARTINEZ', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DUDA BATISTA', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAFA MINEIRA', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SÂMIA', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LEIDIANE', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ALINE MILENE', 'MEIO CAMPO',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUDMILA', 'ATACANTE',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAÍSA', 'ATACANTE',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LURDINHA', 'ATACANTE',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PATY SOCHOR', 'ATACANTE',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAICYANE', 'ATACANTE',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SYD BLOMQUIST', 'ATACANTE',5, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABI CROCO', 'GOLEIRA',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RENATA (KAKÁ)', 'GOLEIRA',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAINÁ', 'GOLEIRA',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('YASMIN', 'GOLEIRA',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA PORTUGAL', 'LATERAL',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL LADAGA', 'LATERAL',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JISSELE', 'LATERAL',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAQUEL', 'LATERAL',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DEBORA (SORRISO)', 'LATERAL',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CIDA', 'ZAGUEIRA',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RENATA', 'ZAGUEIRA',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('STELLA TERRA', 'ZAGUEIRA',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA ROSA', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL MATOS', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAYLANE', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LARISSA BAIANA', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LORRAYNNE', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NAELY', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SCARLETT', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA CARLA', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ARYANE', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CARLINHA', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANDRESSA (DEDÊ)', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JAYANNE', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SAMHIA', 'MEIO CAMPO',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DANI ORTOLAN', 'ATACANTE',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FLAVIA', 'ATACANTE',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANDRESSA LODI', 'ATACANTE',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAFA BARROS', 'ATACANTE',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RHAIZZA', 'ATACANTE',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THALITA', 'ATACANTE',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TUANE', 'ATACANTE',6, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAÍSSA', 'GOLEIRA',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LORENA', 'GOLEIRA',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SINARA', 'LATERAL',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GISSELI', 'LATERAL',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISABELA', 'LATERAL',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VITORIA KAÍSSA', 'LATERAL',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANDRESSA PEREIRA', 'ZAGUEIRA',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANDREIA ROSA', 'ZAGUEIRA',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JANAINA', 'ZAGUEIRA',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KIKA BRANDINO', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JANE TAVARES', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JÉ ALVES', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TCHULA', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PRI BACK', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAYARA', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIZA', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAGLIA', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAFA LEVIS', 'MEIO CAMPO',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NATHANE FABEM', 'ATACANTE',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAIARA', 'ATACANTE',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LAIS ESTEVAM', 'ATACANTE',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABIZINHA', 'ATACANTE',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EUDIMILLA', 'ATACANTE',7, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABI BARBIERI', 'GOLEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAYARA', 'GOLEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SABRINA', 'GOLEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VIVI HOLZEL', 'GOLEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BELINHA', 'LATERAL',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LEIDIANE', 'LATERAL',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LIRIEL', 'LATERAL',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VITORIA MOREIRA', 'LATERAL',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ARIANE CABRERA', 'ZAGUEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA BENITES', 'ZAGUEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DUDA FLORES', 'ZAGUEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISA HASS', 'ZAGUEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('INGRID SORRISO', 'ZAGUEIRA',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DJENI BECKER', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAIARA CAROLINA', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIANA PIRES', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MILENINHA', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAFA TRAVALÃO', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JU FERREIRA', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAMILA', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THESSA', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VICK MOURA', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('XIMENA VELASCO', 'MEIO CAMPO',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA BEATRIZ (BIA)', 'ATACANTE',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FABI SIMÕES', 'ATACANTE',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUANA GRABIAS', 'ATACANTE',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAINA (MARANHÃO)', 'ATACANTE',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MILLENE FERNANDES', 'ATACANTE',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SHASHÁ', 'ATACANTE',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('WENDY CARBALLO', 'ATACANTE',8, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BARBARA', 'GOLEIRA',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LETICIA BUSSATTO', 'GOLEIRA',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL DOS SANTOS', 'LATERAL',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BARBARA SANTOS', 'LATERAL',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FRAN BONFANTI', 'LATERAL',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TUANI LEMOS', 'ZAGUEIRA',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CARLA ALVES', 'ZAGUEIRA',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SIMEIA DA SILVA', 'ZAGUEIRA',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA SOARES', 'ZAGUEIRA',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PATRICIA DERRICO', 'MEIO CAMPO',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KARINA THAMIRIS', 'MEIO CAMPO',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAUANE (ZOIO)', 'MEIO CAMPO',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PATRICIA LLANOS', 'MEIO CAMPO',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABY SAORES', 'MEIO CAMPO',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VILMA NASCIMENTO', 'MEIO CAMPO',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('STHEPANIE DE ASSIS', 'MEIO CAMPO',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CATYELLEN', 'ATACANTE',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LETICIA (LELÊ)', 'ATACANTE',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAIZA DA SILVA', 'ATACANTE',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LARISSA (LARYH)', 'ATACANTE',9, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THALYA', 'GOLEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JANNY BATISTA', 'GOLEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAREN XAVIER', 'GOLEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JESSICA SOARES', 'LATERAL',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KATIELLE', 'LATERAL',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MADU', 'LATERAL',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SUZANA', 'LATERAL',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BIA', 'ZAGUEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EDILAINE (DIH)', 'ZAGUEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANDRESSA (KAKÁ)', 'ZAGUEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUY', 'ZAGUEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LIAMARA (LIA)', 'ZAGUEIRA',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ALÊ', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GABI ARCANJO', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISADORA AMARAL', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KARLA ALVES', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CYNTHIA (MONSE)', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRENDA', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GIULIA', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EMANUELA BALBINOT', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LAINE (LAY)', 'MEIO CAMPO',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUIZA FARINON', 'ATACANTE',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ADRIANE NENÊ', 'ATACANTE',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA PELÉ', 'ATACANTE',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PRINCE', 'ATACANTE',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAYANE (ROBINHA)', 'ATACANTE',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('STEFFANI (STEF)', 'ATACANTE',10, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NICOLE RAMOS', 'GOLEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FERNANDA', 'GOLEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIA GABRIELA', 'GOLEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('YAKI VECCA', 'LATERAL',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAÍNI NUNES', 'LATERAL',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULIA CIPRIANI', 'LATERAL',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MIRIAM (MIRA)', 'LATERAL',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NATALIE NALON', 'ZAGUEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIANA (MARI)', 'ZAGUEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAREN DA SILVA', 'ZAGUEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAYS CHAGAS', 'ZAGUEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('HILDA VERÔNICA', 'ZAGUEIRA',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PÂMELA DUTRA', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULIANA SANTOS', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SARA PIVETA', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LARISSA SANCHES', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARTA MATOS', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JAINE LEMKE', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUANA DE SOUZA', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TREYCI CAMPOS', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LARISSA VASCONCELLOS', 'MEIO CAMPO',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SORAYA DE LIMA', 'ATACANTE',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA PEREIRA (ANINHA)', 'ATACANTE',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIA LUISA (MALU)', 'ATACANTE',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NAIANE BROZINGA', 'ATACANTE',11, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULLY', 'GOLEIRA',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TATY AMARO', 'GOLEIRA',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AWANNY', 'GOLEIRA',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA CALDERAN', 'LATERAL',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EVELIN', 'LATERAL',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULINHA', 'LATERAL',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MANUELA', 'LATERAL',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AGUSTINA', 'ZAGUEIRA',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL SANTOS', 'ZAGUEIRA',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAINARA', 'ZAGUEIRA',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAIS FERREIRA', 'ZAGUEIRA',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA CLARA', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ARY BORGES', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILINHA', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DÓROTY', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DUDA SANTOS', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULIA BIANCHI', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULIANA PASSARI', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAROL ARCANJO', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KATRINE', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAFA ANDRADE', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAYNÁ', 'MEIO CAMPO',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BIA ZANERATTO', 'ATACANTE',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL BAIANA', 'ATACANTE',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CHU SANTOS', 'ATACANTE',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DANDARA', 'ATACANTE',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GIOVANA', 'ATACANTE',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('OTTILIA', 'ATACANTE',12, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FLAVIA GUEDES', 'GOLEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('STEFANE', 'GOLEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAIS AMORIM', 'GOLEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KEI KEI', 'GOLEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NATASHA', 'LATERAL',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ELIANE ROCHA', 'LATERAL',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAQUEL SANTOS', 'LATERAL',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LANA MARA', 'LATERAL',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA NATIELI', 'LATERAL',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NATHÁLIA BRANCO', 'LATERAL',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DANUSIA (DAN)', 'LATERAL',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISABELA APARECIDA', 'ZAGUEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JAMILLE NEVES', 'ZAGUEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('PETRA CABRERA', 'ZAGUEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAFA SOARES', 'ZAGUEIRA',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUCIANA LEITE', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA PINI', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANDRESSA FREITAS', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SABRINA (SASSÁ)', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARGARETH', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ELLEN NOGUEIRA', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MAIARA SANTOS', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAIS LEMOS', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAÍS (PITTY)', 'MEIO CAMPO',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARCELA CASSIA', 'ATACANTE',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DAMIANA DANIELE', 'ATACANTE',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TÁBATHA DAINARA', 'ATACANTE',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JANETY BEZERRA', 'ATACANTE',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EVELYN (GADU)', 'ATACANTE',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JOELMA ALVES', 'ATACANTE',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AMANDA RIBEIRO', 'ATACANTE',13, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MICHELLE', 'GOLEIRA',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA GOMES', 'GOLEIRA',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DIDA', 'GOLEIRA',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNINHA', 'LATERAL',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FE PALERMO', 'LATERAL',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SASSÁ', 'ZAGUEIRA',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DAY SILVA', 'ZAGUEIRA',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('TAYLA', 'ZAGUEIRA',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA', 'ZAGUEIRA',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JULIA DALTOÉ', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GI FERNANDES', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NICOLE MARUSSI', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUANA', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LAURA VALVERDE', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BIA MENEZES', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RITA BOVE', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ALANNA', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRENA', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ERIKINHA', 'MEIO CAMPO',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BYANCA BRASIL', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANALUYZA', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAISINHA', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CRISTIANE', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('AMANDA GUTIERRES', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARIA DIAS', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KAREN', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('KETLEN', 'ATACANTE',14, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ROSANY (ZANY)', 'GOLEIRA',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JESSICA FERREIRA', 'GOLEIRA',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RENATA MAY', 'GOLEIRA',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAMILA SANTOS', 'LATERAL',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('EVELLYN TAUANE', 'LATERAL',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JUCELIA (JUJU)', 'LATERAL',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NATÁLIA LUANA', 'LATERAL',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BRUNA AMARANTE', 'ZAGUEIRA',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LETICIA FAGUNDES', 'ZAGUEIRA',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VITORIA BRUNA', 'ZAGUEIRA',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('IONARA FERREIRA', 'MEIO CAMPO',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LARISSA NEPOMUCENO', 'MEIO CAMPO',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LUANA MARQUES', 'MEIO CAMPO',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('RAFA MARQUES', 'MEIO CAMPO',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SILVANA (BAIANA)', 'MEIO CAMPO',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAYNARA LIMA', 'MEIO CAMPO',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VERÔNICA MARQUES', 'MEIO CAMPO',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ADYLA KEYLLA', 'ATACANTE',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('BEATRIZ SILVA (BEA)', 'ATACANTE',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('FERNANDA TIPA', 'ATACANTE',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GIOVANIA CAMPO', 'ATACANTE',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JOYCE AMARA', 'ATACANTE',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JU OLIVEIRA', 'ATACANTE',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('SIRLAYNE (SISI)', 'ATACANTE',15, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CARLA', 'GOLEIRA',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAIS HELENA', 'GOLEIRA',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARCELLE', 'GOLEIRA',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NATANE', 'LATERAL',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DANI', 'LATERAL',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GIOVANA', 'LATERAL',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MONICA', 'LATERAL',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ANA CLARA', 'LATERAL',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LAUREN', 'ZAGUEIRA',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('THAIS REGINA', 'ZAGUEIRA',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GISLAINE', 'ZAGUEIRA',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ALVES', 'ZAGUEIRA',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NATH PITBULL', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MIRIAM (CRIS)', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MARESSA', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROL', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('DUDA', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('VITORIA (YAYA)', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('NAJELA (NANÁ)', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('LARISSA', 'MEIO CAMPO',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GLAUCIA', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CARLA NUNES', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GICA', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('JAQUELINE', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MICAELLY', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('MYLLA', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('GIOVANINHA', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('CAROLINE', 'ATACANTE',16, now(), now());
INSERT INTO jogadoras (nome, posicao, equipeId, createdAt, updatedAt) VALUES ('ISA', 'ATACANTE',16, now(), now());
  
CREATE TABLE `escaladb`.`usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`));
  
INSERT INTO usuarios (nome, email, telefone, createdAt, updatedAt) VALUES ('Usuário Teste 1', 'usuario1@teste.com', '(11) 11111-1111', now(), now());
INSERT INTO usuarios (nome, email, telefone, createdAt, updatedAt) VALUES ('Usuário Teste 2', 'usuario2@teste.com', '(22) 22222-2222', now(), now());
INSERT INTO usuarios (nome, email, telefone, createdAt, updatedAt) VALUES ('Usuário Teste 3', 'usuario3@teste.com', '(33) 33333-3333', now(), now());
  
  CREATE TABLE `escaladb`.`formacao` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `num_goleira` INT NULL,
  `num_lateral` INT NULL,
  `num_zagueira` INT NULL,
  `num_meia` INT NULL,
  `num_atacante` INT NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`));
  
INSERT INTO formacao (nome, num_goleira, num_lateral, num_zagueira, num_meia, num_atacante, createdAt, updatedAt) VALUES ('4-3-3', 1, 2, 2, 3, 3, now(), now());
INSERT INTO formacao (nome, num_goleira, num_lateral, num_zagueira, num_meia, num_atacante, createdAt, updatedAt) VALUES ('4-4-2', 1, 2, 2, 4, 2, now(), now());  
INSERT INTO formacao (nome, num_goleira, num_lateral, num_zagueira, num_meia, num_atacante, createdAt, updatedAt) VALUES ('3-4-3', 1, 0, 3, 4, 3, now(), now());
CREATE TABLE `escaladb`.`times` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `usuarioId` INT NOT NULL,
  `pontuacao` VARCHAR(45) NULL,
  `createdAt` DATETIME NOT NULL,
  `updatedAt` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
   INDEX `usuarioId_idx` (`usuarioId` ASC) VISIBLE,
  CONSTRAINT `usuarioId`
    FOREIGN KEY (`usuarioId`)
    REFERENCES `escaladb`.`usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
  
  INSERT INTO times (nome, usuarioId, pontuacao, createdAt, updatedAt) VALUES ('Time Teste 1', 1, '10', now(), now());
  INSERT INTO times (nome, usuarioId, pontuacao, createdAt, updatedAt) VALUES ('Time Teste 2', 2, '20', now(), now());
  INSERT INTO times (nome, usuarioId, pontuacao, createdAt, updatedAt) VALUES ('Time Teste 3', 3, '15', now(), now());
  
  