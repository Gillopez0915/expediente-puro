CREATE SCHEMA IF NOT EXISTS `tshirtBD` DEFAULT CHARACTER SET utf8 ;
USE `tshirtBD` ;

CREATE TABLE IF NOT EXISTS `tshirtBD`.`persona` (
  `idPersona` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(100) NULL,
  `apellidos` VARCHAR(100) NULL,
  `email` VARCHAR(70) NULL,
  `direccion` VARCHAR(100) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`idPersona`))
ENGINE = InnoDB;

INSERT INTO persona(nombres,apellidos,email,direccion,telefono)
VALUES("admin","admin", "email@emial.com","calle no 1","1234567890");

CREATE TABLE IF NOT EXISTS `tshirtBD`.`admin` (
  `idUsuario` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `idPersona` INT NOT NULL,
  PRIMARY KEY (`idUsuario`),
  INDEX (`idPersona` ASC),
  CONSTRAINT `fk_admin_persona`
    FOREIGN KEY (`idPersona`)
    REFERENCES `tshirtBD`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `tshirtBD`.`admin`(usuario,password,idPersona) 
VALUES("admin","admin",1);


CREATE TABLE IF NOT EXISTS `tshirtBD`.`cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `usuario` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `idPersona` INT NOT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX (`idPersona` ASC),
  CONSTRAINT `fk_cliente_persona1`
    FOREIGN KEY (`idPersona`)
    REFERENCES `tshirtBD`.`persona` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `tshirtBD`.`categoria` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;

INSERT INTO categoria(categoria) VALUES("Hombre");
INSERT INTO categoria(categoria) VALUES("Mujer");
INSERT INTO categoria(categoria) VALUES("Ni&ntildeos");
INSERT INTO categoria(categoria) VALUES("Bebes");

CREATE TABLE IF NOT EXISTS `tshirtBD`.`proveedor` (
  `idProvedor` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `direccion` VARCHAR(45) NULL,
  `telefono` VARCHAR(45) NULL,
  PRIMARY KEY (`idProvedor`))
ENGINE = InnoDB;

INSERT INTO PROVEEDOR(nombre,direccion,telefono)values("proveedor1","direcion 1","551234854938");
INSERT INTO PROVEEDOR(nombre,direccion,telefono)values("proveedor2","direcion 2","551234854938");
INSERT INTO PROVEEDOR(nombre,direccion,telefono)values("proveedor3","direcion 3","551234854938");
INSERT INTO PROVEEDOR(nombre,direccion,telefono)values("proveedor4","direcion 4","551234854938");
INSERT INTO PROVEEDOR(nombre,direccion,telefono)values("proveedor5","direcion 5","551234854938");

CREATE TABLE IF NOT EXISTS `tshirtBD`.`productos` (
  `idProducto` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(100) NULL,
  `descripcion` VARCHAR(500) NULL,
  `precio` VARCHAR(45) NULL,
  `imagen` VARCHAR(100) NULL,
  `existencia` INT NULL,
  `idCategoria` INT NOT NULL,
  `idProvedor` INT NOT NULL,
  PRIMARY KEY (`idProducto`),
  INDEX (`idCategoria` ASC),
  INDEX (`idProvedor` ASC),
  CONSTRAINT `fk_productos_categoria1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `tshirtBD`.`categoria` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_productos_proveedor1`
    FOREIGN KEY (`idProvedor`)
    REFERENCES `tshirtBD`.`proveedor` (`idProvedor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa Blanca","Camisa blanca a rayas","300","/Hombre/camisa1.jpg",40,1,1);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa Azul","Camisa azul a cuadros","250","/Hombre/camisa2.jpg",40,1,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa Azulada","Camisa azul","450","/Hombre/camisa3.jpg",40,1,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa puntos","Camisa azul a puntos","650","/Hombre/camisa4.jpg",40,1,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa cuadros","Camisa azul a cuadros","650","/Hombre/camisa5.jpg",40,1,4);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Corbata","Corbata azul marino rayas","250","/Hombre/corbata1.jpg",40,1,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Corbata","Corbata azul claro","150","/Hombre/corbata2.jpg",40,1,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Corbata","Corbata negra","180","/Hombre/corbata3.jpg",40,1,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Corbata","Corbata negra","180","/Hombre/corbata4.jpg",40,1,5);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Pantalon Hombre","Pantalon negro","200","/Hombre/pantalon1.jpg",40,1,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Pantalon caballero","Pantalon azul","400","/Hombre/pantalon2.jpg",40,1,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Pantalon caballero","Pantalon azul","400","/Hombre/pantalon3.jpg",40,1,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa Blanca","Camisa blanca","330","/Mujer/camisa1.jpg",40,2,1);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa Rosa","Camisa rosa","260","/Mujer/camisa2.jpg",40,2,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa Azulada","Camisa azul","450","/Mujer/camisa3.jpg",40,2,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Camisa azul","Camisa azul a puntos","650","/Mujer/camisa4.jpg",40,2,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Vestido","vestido verde","250","/Mujer/vestido1.jpg",40,2,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Vestido navide&ntildeo","vestido navide&ntilde;o","150","/Mujer/vestido2.jpg",40,2,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Vestido","vestido negro","460","/Mujer/vestido3.jpg",40,2,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Vestido","vestido rojo","600","/Mujer/vestido4.jpg",40,2,5);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("zapatilla negra","zapatilla negra","250","/Mujer/zapato1.jpg",40,2,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Zapatilla","Pantalon azul","400","/Mujer/zapato2.jpg",40,2,1);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Tenis rosa","tenis rosa","500","/Mujer/zapato3.jpg",40,2,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Botas","botas negras","700","/Mujer/zapato4.jpg",40,2,5);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa casual","ropa para ni&ntildeo","250","/Ninos/ropa1.jpg",40,3,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa casual peques","ropa para ni&ntildeo","100","/Ninos/ropa2.jpg",40,3,5);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa ni&ntildeo","ropa para ni&ntildeo","290","/Ninos/ropa3.jpg",40,3,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa ni&ntildeo","ropa para ni&ntildeo","590","/Ninos/ropa4.jpg",40,3,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa minecraft","ropa para ni&ntildeo","320","/Ninos/ropa5.jpg",40,3,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa ni&ntildea","Ropa para ni&ntildea","520","/Ninos/ropa6.jpg",40,3,3);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Conjunto rosa","Ropa para ni&ntildeaa","310","/Ninos/ropa7.jpg",40,3,5);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Conjunto rojo/blanco","Ropa para ni&ntildeaa","450","/Ninos/ropa8.jpg",40,3,5);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Conjunto para bebe","Ropa para bebes","450","/Bebe/ropa1.jpg",40,4,5);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa Bebe","Ropa para bebes","550","/Bebe/ropa2.jpg",40,4,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa Bebe gris","Ropa para bebes","550","/Bebe/ropa3.jpg",40,4,1);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Conjunto azul","Ropa para bebes","750","/Bebe/ropa4.jpg",40,4,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa bebe ni&ntilde;a","Ropa para bebes","450","/Bebe/ropa5.jpg",40,4,2);
insert into productos(nombre,descripcion,precio,imagen,existencia,idCategoria,idProvedor)
values("Ropa bebe unisex","Ropa para bebes","250","/Bebe/ropa6.jpg",40,4,2);

CREATE TABLE IF NOT EXISTS `tshirtBD`.`carrito` (
  `idCarrito` INT NOT NULL AUTO_INCREMENT,
  `idCliente` INT NOT NULL,
  `idProducto` INT NOT NULL,
  INDEX (`idProducto` ASC),
  INDEX (`idCliente` ASC),
  PRIMARY KEY (`idCarrito`),
  CONSTRAINT `fk_cliente_has_productos_cliente1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `tshirtBD`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_has_productos_productos1`
    FOREIGN KEY (`idProducto`)
    REFERENCES `tshirtBD`.`productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `tshirtBD`.`Ventas` (
  `idVenta` VARCHAR(45) NOT NULL,
  `Idcliente` INT NOT NULL,
  `IdProducto` INT NOT NULL,
  INDEX (`IdProducto` ASC),
  INDEX (`Idcliente` ASC),
  PRIMARY KEY (`idVenta`),
  CONSTRAINT `fk_cliente_has_productos_cliente2`
    FOREIGN KEY (`Idcliente`)
    REFERENCES `tshirtBD`.`cliente` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_cliente_has_productos_productos2`
    FOREIGN KEY (`IdProducto`)
    REFERENCES `tshirtBD`.`productos` (`idProducto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
