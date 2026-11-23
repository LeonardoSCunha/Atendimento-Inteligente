CREATE TABLE IF NOT EXISTS clients (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    client_name TEXT NOT NULL,
    phone INTEGER NOT NULL,
    email TEXT
);
# Inserir clients
#INSERT INTO clients (client_name,phone,email) VALUES ('Fulano 2','159975561245','fulanocomoutroemail@gmail.com')
 
CREATE TABLE IF NOT EXISTS departaments (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    departament_name TEXT NOT NULL,
    classification TEXT NOT NULL,
    activities TEXT NOT NULL
)

#INSERT INTO departaments (departament_name,classification,activities) VALUES ('Financeiro','monetario','cobranças, estornos, segunda via, negociação de débitos.')
#INSERT INTO departaments (departament_name,classification,activities) VALUES ('Suporte Técnico','tecnico','quedas de conexão, lentidão, equipamentos, visita técnica.')
INSERT INTO departaments (departament_name,classification,activities) VALUES ('Retenção','tecnico','quedas de conexão, lentidão, equipamentos, visita técnica.')
INSERT INTO departaments (departament_name,classification,activities) VALUES ('Suporte Técnico','tecnico','quedas de conexão, lentidão, equipamentos, visita técnica.')

CREATE TABLE IF NOT EXISTS sort (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    client_id INTEGER NOT NULL,
    client_message  TEXT NOT NULL,
    platform TEXT NOT NULL,
    date_hour DATE NOT NULL 
)

CREATE TABLE IF NOT EXISTS platform  (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    plataform_name TEXT NOT NULL,
    register_clients INT NOT NULL,
    quant_messages INT NOT NULL
)