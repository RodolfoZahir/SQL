CREATE DATABASE Trabajo1SQL
GO
USE Trabajo1SQL
GO
CREATE TABLE cupon(
    CantidadDeDescuento VARCHAR(3) NOT NULL,
    CodigoDeDescuento INT NOT NULL,
    PRIMARY KEY (CodigoDeDescuento)
)

CREATE TABLE cliente(
    Correo VARCHAR(45) NOT NULL,
    Nombre VARCHAR(45) NOT NULL,
    IDCliente INT NOT NULL,
    PRIMARY KEY (IDCliente)
)

CREATE TABLE tienda(
    Direccion VARCHAR(45) NOT NULL,
    NumCalle INT NOT NULL,
    IDTienda VARCHAR(45) NOT NULL,
    PRIMARY KEY (IDTienda),
)

CREATE TABLE fragancia(
    CodigoDeLaFragancia INT NOT NULL,
    IDTienda VARCHAR(45) NOT NULL,
    Precio INT NOT NULL,
    Unidades INT NOT NULL,
    Modelo VARCHAR(30) NOT NULL,
    PRIMARY KEY (CodigoDeLaFragancia),
    CONSTRAINT fk_fragancia_IDTienda FOREIGN KEY(IDTienda) REFERENCES tienda(IDTienda),
)

CREATE TABLE compra(
    Hora VARCHAR(5) NOT NULL,
    CodigoDeLaCompra INT NOT NULL,
    CodigoDeLaFragancia INT NOT NULL,
    PRIMARY KEY (CodigoDeLaCompra),
    CONSTRAINT fk_compra_CodigoDeLaFragancia FOREIGN KEY(CodigoDeLaFragancia) REFERENCES fragancia(CodigoDeLaFragancia),
)

insert into cupon values('50%',80100);
insert into cupon values('50%',81100);
insert into cupon values('50%',82100);
insert into cupon values('50%',83100);
insert into cupon values('50%',84100);
insert into cupon values('50%',85100);
insert into cupon values('50%',86100);
insert into cupon values('50%',87100);
insert into cupon values('50%',88100);
insert into cupon values('50%',89100);

insert into cliente values('NatanaelCano@gmail.com','Natanael Rubén Cano Monje',001);
insert into cliente values('nolan_16@hotmail.com','Nolan López Méndez',002);
insert into cliente values('rodozahirgg@gmail.com','Rodolfo Zahir Assam Méndez',003);
insert into cliente values('ricardo_pro@gmail.com','Ricardo Hernandez Contreras',004);
insert into cliente values('guillermo_pana_fresco@outlook.com','Guillermo Romo Vera',005);
insert into cliente values('raul_jg@gmail.com','Raul Jimenez Gonzales',006);
insert into cliente values('jonamendez202020@gmail.com','Jonathan Gaytan Mendez',007);
insert into cliente values('cub3cat@outlook.com','Luis Ivan Romero Reyes',008);
insert into cliente values('maria2021@hotmail.com','Maria Salcedo Perez',009);
insert into cliente values('sn0wtext@outlook.com','Julio Ochoa Mendoza',010);


insert into tienda values('Francisco I. Madero',890,'Tienda #01');
insert into tienda values('Dr. Mier',203,'Tienda #02');
insert into tienda values('Héroe de Nacataz',740,'Tienda #03');
insert into tienda values('Abraham Lincoln',120,'Tienda #04');
insert into tienda values('C. Hidalgo',902,'Tienda #05');
insert into tienda values('Pino Suárez',308,'Tienda #06');
insert into tienda values('C. 20 de Noviembre',792,'Tienda #07');
insert into tienda values('Francisco Javier Mina',320,'Tienda #08');
insert into tienda values('C. Campeche',400,'Tienda #09');
insert into tienda values('C. Coahuila',682,'Tienda #10');

insert into fragancia values(892910,'Tienda #01','500','2',' Toilette Match Point 100 ml');
insert into fragancia values(263829,'Tienda #02','200','4','Blanc Parfum 50 ml');
insert into fragancia values(105421,'Tienda #03','70','1','Toilette Match Point 30 ml');
insert into fragancia values(594201,'Tienda #04','150','1','Parfum Pour Femme 50 ml');
insert into fragancia values(843726,'Tienda #05','600','4','Rose Eau de Parfum 100 ml');
insert into fragancia values(273984,'Tienda #06','1000','2','Blanc x Roland edition 100 ml');
insert into fragancia values(234780,'Tienda #07','700','7','Magnetic Pour Lui 50 ml');
insert into fragancia values(367382,'Tienda #08','250','1','Magnetic Pour Elle 100 ml');
insert into fragancia values(678954,'Tienda #09','350','1','Toilette Sparkling 90 ml');
insert into fragancia values(978673,'Tienda #10','300','2','Toilette Pour Homme 100 ml');
insert into compra values('10:30',192837,'892910');
insert into compra values('09:00',284538,'263829');
insert into compra values('11:45',291048,'105421');
insert into compra values('14:29',918264,'594201');
insert into compra values('13:12',028364,'843726');
insert into compra values('08:15',2416273,'273984');
insert into compra values('07:02',485736,'234780');
insert into compra values('10:22',938724,'367382');
insert into compra values('17:48',756483,'678954');
insert into compra values('18:14',495032,'978673');
