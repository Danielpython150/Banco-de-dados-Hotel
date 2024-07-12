CREATE TABLE Quarto (
  numero INT NOT NULL PRIMARY KEY,
  valor_diaria FLOAT NOT NULL,
  vista_mar BOOLEAN
);

CREATE TABLE cliente (
  ID SERIAL PRIMARY KEY,
  nome VARCHAR(48) NOT NULL,
  rg VARCHAR(12) NOT NULL,
  telefone VARCHAR(12) NOT NULL
);
 
INSERT INTO quarto (numero, valor_diaria, vista_mar)
VALUES
    (101, 74.94, TRUE),
    (102, 54.50, FALSE),
    (201, 110, TRUE);
    
     INSERT INTO cliente (nome, rg, telefone) VALUES
      ('Joao Perreira', '12345678', '(11)9785432'),
      ('Rafael Alves', '87654321', '(11)97583214');

    
   SELECT * FROM cliente
     
     
    CREATE TABLE estadia (
    ID SERIAL PRIMARY KEY,
    fk_id_quarto INT NOT NULL,
    fk_id_cliente INT NOT NULL,
    CONSTRAINT fk_quarto FOREIGN KEY (fk_id_quarto) REFERENCES quarto (numero),
    CONSTRAINT fk_cliente FOREIGN KEY (fk_id_cliente) REFERENCES cliente (ID)
);

INSERT INTO estadia(fk_id_quarto, fk_id_cliente) VALUES
    (101, 1),
    (102, 2),
    (103, 1),
    (102, 2),

     
     create table meio_pagamento(
     id SERIAL primary KEY,
     nome VARCHAR(18) not NULL
     );
     
       INSERT into meio_pagamento (nome) VALUES
          ('dinheiro')
          ('cartao de credito')
          ('cartao de debito')
       
       
       
    ALTER TABLE estadia
    ADD COLUMN data_entrada VARCHAR(48),
    ADD COLUMN data_saida VARCHAR(48),
    ADD COLUMN valor_total FLOAT,
    ADD COLUMN meio_pagamento INT,
    ADD CONSTRAINT fk_meio_pagamento FOREIGN KEY (meio_pagamento)
        REFERENCES meio_pagamento(ID);

        
        SELECT * FROM estadia
      
      
      