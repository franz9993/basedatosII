use ComputerDB

-- Volcado de datos Tabla Marca
insert into Marca(nombreMarca) values('Dell'),('Toshiba'),('Compaq'),('Acer'),('Logitech'),
									 ('Hp-Invent'),('Sony'),('Samsumg'),('Asus'),('IBM')
									 go

-- Volcado de datso Tabla Color
insert into Color(nombreColor) values('Negro'),('Gris'),('Blanco'),('Azul'),('Rojo'),('Verde')
go									

-- Volcado de datos Tabla Dimension
insert into Dimension(nombreDimension,alto,ancho) values('Ejemplo',6.5,10.4),
														('Ejemplo2',20,14),
														('Ejemplo3',10,17),
														('Normal',6.2,11.3)
go


-- Volcado de datos Tabla Productos
insert into Productos(nombre,descripcion,precio,costo,existencia,idMarca,idDimension,idColor)
values('Monitor','Monitor para PC',3000,2000,15,1,3,1),('Mouse','Mouse inlámbrico usb',400,150,25,1,3,5),
	  ('Laptop','Computadora Laptop pequeña',6000,5000,12,4,2,5),('Teclado','Teclado inalámbrico usb',250,175,20,2,1,1),
	  ('Memoria USB','Dispositivo de almacenamiento usb de 32gb',150,90,50,8,1,2),('PC Hp','Computadora de Escritorio sin CPU',4000,3400,8,6,3,3),
	  ('Laptop','Laptop con tecládo alfanumerico',6000,4500,22,7,3,2),
	  ('Teclado','Teclado Usb Imexx Pc Computadora Laptop',125,90,100,8,1,2),
	  ('Teclado','Logitech Bluetooth Illuminated Keyboard K810',250,180,100,8,1,1),
	  ('Mouse','M510 Wireless Laser Mouse',80,60,100,5,4,1),
	  ('Mouse','Mouse M100',250,180,100,8,4,3)
go



-- Volcado de datos Tabla Pais
insert into Pais(nombrePais)values('Guatemala'),('México'),('USA'),('Argentina'),('Brasil')
go

-- Volcado de datos Tabla Departamento
insert into Departamento(nombreDepartamento,idPais) 
values  ('Petén',1),
		('Huehuetenango',1),
		('Quiche',1),
		('Alta Verapaz',1),
		('Izabal',1),
		('San Marcos',1),
		('Quetzaltenango',1),
		('Totonicapán',1),
		('Sololá',1),
		( 'Chimaltenango',1),
		( 'Sacatepéquez',1),
		( 'Guatemala',1),
		( 'Baja Verapaz',1),
		( 'El Progreso',1),
		( 'Jalapa',1),
		( 'Zacapa',1),
		( 'Chiquimula',1),
		( 'Retalhuleu',1),
		( 'Suchitepéquez',1),
		( 'Escuintla',1),
		( 'Santa Rosa',1),
		( 'Jutiapa',1);
go


-- Volcado de datos Tabla Municipio
insert into Municipio (nombreMunicipio,idDepartamento,idPais)
 values ('Flores',1,1),
		('Dolores',1,1),
		('El chal',1,1),
		('la Libertad',1,1),
		('Las Cruces',1,1),
		('Melchor de Mencos',1,1),
		('Poptún',1,1),
		('San Andres',1,1),
		('San Benito',1,1),
		('San Francisco',1,1),
		('San José',1,1),
		('San Luis',1,1),
		('Santa Ana',1,1),
		('Sayaxché',1,1),
		('Huehuetenango',2,1),
		('Aguacatán',2,1),
		('Chiantla',2,1),
		('Colotenango',2,1),
		('Concepción Huista',2,1),
		('Cuilco',2,1),
		('Jacaltenango',2,1),
		('La libertad',2,1),
		('La democracia',2,1),
		('Malacantancito',2,1),
		('Nentón',2,1),
		('San Antonio Huista',2,1),
		('San Gaspar Ixchil',2,1),
		('San Juan Ixcoy',2,1),
		('San Pedro Necta',2,1),
		('Santa Cruz del Quiché',3,1),
		('Canillá',3,1),
		('Chajul',3,1),
		('Chicamán',3,1),
		('Chiché',3,1),
		('Chichicastenango',3,1),
		('Chinique',3,1),																	 
		('cunén',3,1),
		('Ixcán',3,1),
		('Joyabaj',3,1),
		('Cobán',4,1),
		('Cahál',4,1),
		('Chisec',4,1),
		('Fray Bartolomé de las casas',4,1),
		('Lanquín',4,1),
		('Panzós',4,1),
		('Raxruhá',4,1),
		('San Cristobál Verapaz',4,1),
		('San Juan Chamelco',4,1),
		('San Pedro Carchá',4,1),
		('Puerto Barrios',5,1),
		('El Estór',5,1),
		('Livinstong',5,1),
		('Los amates',5,1),
		('Morales',5,1),
		('Quetzaltenango',7,1),
		('Almolonga',7,1),
		('Cabricán',7,1),
		('Cajolá',7,1),
		('Cantel',7,1),
		('coatepeque',7,1),
		('Colomba Costa Cuca',7,1),
		('Concepción Chiquirichapa',7,1);			
		go


-- Volcado de datos Tabla formaPago
insert into FormaDePago(nombre)
values('Efectivo'),('Tarjeta de Crédito'),('Tarjeta de Débito'),('Transferencia Bancaria'),('Cheque'),('Otro')
go

-- Volcado de Datos a la Tabla Clientes
insert into Clientes(nombreCliente,nit,direccion,idMunicipio,telefono,idFormaPago)
	values('Eduardo Barrios','1416539-2','7ma calle 9-42 Zona 1',50,54441004,1),
		  ('Cesar Cancinos','543667-7','9na avenida Zona 4',2,58646984,2),
		  ('Jorge Chávez','324432-1','Cantón las Victorias',4,77714140,4),
		  ('Cecilia Leal','12345-7','Llanos del Pinal',5,54563321,6),
		  ('María Herrera','444444-1','Cantón la chula zona 4',8,76884532,5),
		  ('Junior Dosantos','7654324-9','Las Picositas de San Luis',10,54326690,3),
		  ('Fabricio Werdrum','6789445-1','Kilometro 94.5 frente a pasarela',43,79886548,6),
		  ('Jhony Bravo','000000-2','Cantón Dolores Zona 4',22,77710432,2),
		  ('Fernande Perez','1111111-2','5ta calle 6-55 zona 2',25,53356743,5),
		  ('Sara Aguilar','6539808-6','Zona 3',6,45345564,4),
		  ('Felipe Dominguez','5467325-2','Colonia Trinidad zona 5',49,77715127,4),
		  ('Akasio Martinez','5643243-7','Hacienda San Joaquín Zona 4',30,56753476,2),
		  ('Miguel Quintanilla','1223436-3','Frente al Cementerio Zona 3',44,77713245,5),
		  ('Jose Luis López','2133879-1','Zona 4',42,77719452,3),
		  ('Canario Ortíz','8754332-8','Colonia Mendizabal Zona 2',35,41793176,6),
		  ('Elvin Morales','278638-8','Ciudad',1,34064744,1),
		  ('Zelik Ramirez','912201-3','8va avenida calle 4-05 Zona 1',2,49500324,1),
		  ('Hamilton Lopez','57768-2','7ma avenida Zona 1',1,52534588,2),
		  ('Nicolas Hagen','435647-6','8va avenida calle 2-01 Zona 8',4,46102241,3),
		  ('Mauro Portillo','64356-7','2da avenida calle 7-09 Zona 10',10,54675465,4),
		  ('Agustin Herrera','456754-1','8ra avenida calle 5-05 Zona 3',6,46563452,1),
		  ('Bryan Ordoñez','763224-9','9na avenida calle 4-05 Zona 1',7,54235468,5),
		  ('Carlos Ruiz','672143-1','7ma avenida calle 6-05 Zona 2',13,31246578,2),
		  ('Guillermo Alvarez','2134567-2','5ta avenida calle 2-03 Zona 4',22,56789832,1),
		  ('Cristian Sanchez','678542-2','5ta avenida calle 7-05 Zona 2',25,54678765,5),
		  ('Gaston Puerari','653208-6','6ta avenida calle 9-03 Zona 1',9,42312345,2),
		  ('Paulo Mota','5443525-2','4ta avenida calle 4-05 Zona 1',19,32457687,3),
		  ('Darwin Oliva','554243-7','8va avenida calle 2-04 Zona 4',20,54555445,4),
		  ('Carlos Kamiani','654387-3','7ma avenida calle 9-25 Zona 3',24,77543457,1),
		  ('Osman Lopez','324567-1','3ra avenida calle 8-15 Zona 8',42,43657843,1),
		  ('Luis suarez','534121-8','5ta avenida calle 2-05 Zona 2',25,44032881,1),
		  ('Pedro Altan','564321-7','9na avenida calle 3-05 Zona 4',30,31498790,3),
		  ('Jaime Alas','762346-3','8va avenida calle 4-05 Zona 1',14,49163929,1),
		  ('Danilo Guerra','413389-1','6ta avenida calle 3-07 Zona 2',22,45388396,1),
		  ('John Mendez','475432-9','9na avenida calle 2-07 Zona 1',45,30182131,1),
		  ('Ricardo Foster','7865432-3','4ta avenida calle 4-05 Zona 3',24,50000908,1),
		  ('Dennis Laparra','458321-1','9na avenida calle 1-05 Zona 2',32,44678798,3),
		  ('Dario Flores','974653-8','8va avenida calle 4-05 Zona 1',15,41793175,1),
		  ('Jefri Payeras','8634503-8','9na avenida calle 3-05 Zona 4',10,59753476,1),
		  ('Cristian Jimenez','543678-2','5ta avenida calle 7-05 Zona 2',44,71713245,2),
		  ('Alexis Matta','876543-9','2da avenida calle 7-09 Zona 10',22,54194562,4),
		  ('Gustavo Machain','87532-1','7ma avenida calle 6-05 Zona 2',32,49793176,2),
		  ('Jonatan Lopez','434567-1','7ma avenida calle 6-05 Zona 9',27,54657843,1),
		  ('Israel Silva','3234121-8','8va avenida calle 4-05 Zona 1',26,56032881,1),
		  ('Kevin Arreola','824321-7','9na avenida calle 3-05 Zona 4',40,51498790,3),
		  ('Fernando Paterson','212346-3','6ta avenida calle 9-03 Zona 1',29,74163929,1),
		  ('Jonny Cubero','513389-1','6ta avenida calle 3-07 Zona 2',42,55388396,1),
		  ('Milton Sanchez','375432-9','9na avenida calle 2-07 Zona 1',35,50182131,1),
		  ('Tyson Nuñez','2865432-3','5ta avenida calle 2-03 Zona 4',44,30000908,1),
		  ('Edison Escobar','658321-1','9na avenida calle 1-05 Zona 2',42,34678798,3),
		  ('Rudy Diaz','774653-8','8va avenida calle 4-05 Zona 1',35,41793175,1),
		  ('Rocio Rodas','9634503-8','9na avenida calle 3-05 Zona 4',30,56789832,1),
		  ('Glandys Samayoa','843678-2','5ta avenida calle 7-05 Zona 2',21,41713245,2),
		  ('William Reyes','476543-9','2da avenida calle 7-09 Zona 10',41,44194562,4),
		  ('Daniela Ramirez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Vicenta Sanchez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Tuti Reyes','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Mario Casas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Armando Casas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Leonel Messi','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Maria De Leon','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Salvador Casas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Rosario Castañeda','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Ricardo Arjona','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Elisandro Mendoza','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Ana Garcia','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Ana Paula','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Paola Mendez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Sergio Alegria','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Daniel Catalan','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Daniela Catalan','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Frans Perez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Juan Garcia','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Juan Diego','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Brian Reyes','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Pedro Ulises','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Marco de Tropoya','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Gamaiel Montesino','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Rebeca Arduino','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Roberta Aquino','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Daniela Romulo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Gloria Moyo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Marile Moyo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Heidy Santay','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Yolanda Casas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('America Acero','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Salvador Mans','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Margarita Garcia','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Lucia Casanova','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Carla Wins','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Willian Mendoza','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Betty Flores','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Remigio Chanique','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('John Cena','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Juan Gabriel','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Daniel Romo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Marisela Smith','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Yolanda Centauro','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Maria Cirena','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Jesus Gonzales','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Luis Flores','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Efrain Gomez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Eloisa Casas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Edgardo del Villar','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Edith Gomez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Rut Reyes','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Rubi Comejen','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Elena Clean','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Eleonor Vens','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Elsa Chirmol','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Emilio De León','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Enrique Griego','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Erico Gomez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Erick Villatoro','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Erika Dom','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Luis De Leon','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Ernesto Pepito','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Estela Santay','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Elias Maldonado','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Elias Campano','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Gari Gutierrez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Florentino Chavez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Eloina Pluton','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Ezequiel Ranch','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('John Rambo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Margarito Margot','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Laura Laurin','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Luz Maria','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Hugo Chavez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Daniel Laruso','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Samuel Miyagi','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Sara Gallo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Liz Uz','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Rigoberta Menchu','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Eufemia Flores','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Ruben Morales','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Cindy De Leon','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Marcelo Calvo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Domini Uz','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Tommy Vargas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Luis Casas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Mario Casas','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Carmen Vicente','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Mirian Hernandez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Sara Vicente','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Orfa Maldonado','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Lorenza Flores','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Lucero Guerra','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Mayra Gutierrez','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Cautemo Blanco','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Hugo Castro','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Barbara Bermudo','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Pamela Silva','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Tony Andrade','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2),
		  ('Flora Peluche','37532-1','7ma avenida calle 6-05 Zona 2',35,59793176,2)
      
go		 


-- Volcado de Datos Tabla Proveedor
insert into Proveedor(nombreProveedor,nit,direccion,idMunicipio,telefono,idFormaPago)
	values('Mateo Fernandez','1416539-2','7ma calle 9-42 Zona 1',50,54441004,1),
		  ('Silvia Rosales','543667-7','9na avenida Zona 4',2,58646984,2),
		  ('Juan Pablo García','324432-1','Cantón las Victorias',4,77714140,4),
		  ('Carlos López','12345-7','Llanos del Pinal',5,54563321,6),
		  ('Dani Dinael','444444-1','Cantón la chula zona 4',8,76884532,5),
		  ('Elmer del Cid','7654324-9','Las Picositas de San Luis',10,54326690,3),
		  ('Pedro Rivas','6789445-1','Kilometro 94.5 frente a pasarela',43,79886548,6),
		  ('Jorge Mario Vidal','000000-2','Cantón Dolores Zona 4',22,77710432,2),
		  ('Mario Castillo','1111111-2','5ta calle 6-55 zona 2',25,53356743,5),
		  ('Rafael Hernandez','6539808-6','Zona 3',6,45345564,4),
		  ('Juan José Grajeda','5467325-2','Colonia Trinidad zona 5',49,77715127,4),
		  ('Karla Arenas','5643243-7','Hacienda San Joaquín Zona 4',30,56753476,2),
		  ('Dina Arroyo','1223436-3','Frente al Cementerio Zona 3',44,77713245,5),
		  ('Marlon Mejía','2133879-1','Zona 4',42,77719452,3),
		  ('Freddy Herrera','8754332-8','Colonia Mendizabal Zona 2',35,41793176,6),
		  ('David Espinoza','1416539-2','7ma avenida calle 6-05 Zona 2',9,59793176,1),
		  ('Selvin Gudiel','543667-7','2da avenida calle 7-09 Zona 10',3,44194562,2),
		  ('Kevin Carreto','324432-1','5ta avenida calle 7-05 Zona 2',7,34678798,4),
		  ('Alvaro Ticuru','12345-7','9na avenida calle 3-05 Zona 4',11,54563321,6),
		  ('David Guerra','444444-1','8va avenida calle 4-05 Zona 1',12,34678798,5),
		  ('Jorge Izazola','7654324-9','2da avenida calle 7-09 Zona 10',13,54326690,3),
		  ('Pablo Silva','6789445-1','6ta avenida calle 9-03 Zona 1',14,50182131,6),
		  ('Jorge Mario ','000000-2','5ta avenida calle 7-05 Zona 2',15,78710432,2),
		  ('Juan Paredes','1111111-2','4ta avenida calle 4-05 Zona 3',16,51356743,5),
		  ('Diego Orozco','6539808-6','8va avenida calle 4-05 Zona 1',6,48345564,4),
		  ('Jimmy Moraes','5467325-2','2da avenida calle 7-09 Zona 10',19,47715127,4),
		  ('Dayana Morales','5643243-7','5ta avenida calle 7-05 Zona 2',20,50753476,2),
		  ('Jorge Ortiz','1223436-3','5ta avenida calle 7-05 Zona 5',4,37713245,5),
		  ('Marlon Negrete','2133879-1','4ta avenida calle 4-05 Zona 6',2,41194562,3),
		  ('Fredy Orellana','8754332-8','8va avenida calle 4-05 Zona 1',15,42793176,6)
go		 

-- Volcado de Datos Tabla Proveedor

/*

-- altere el campo documento de la Tabla Salida lo converti a int para poder
-- ingresar datos mas rapido, si usted no ha creado la base de datos con base a este script
-- no se preocupe el script de creación de la base de datos ha sido modificado
-- pero si usted ya tiene los campos documento de las tablas Entrada y Salida como varchar utilice las siguientes lineas
alter table dbo.Entrada alter column documento int;
alter table dbo.Salida alter column documento int;



-- Volcado de Datos Tabla Salida
-- se recomienda usar el sp creado para esta insercción masiva dentro de un bucle while
-- ojo lo unico que no es dinamico es la fecha 
-- con el siguiente codigo se insertaran 1000 registros tomar en cuenta la creación del sp
declare @documento int
set @documento=1
--select @variable as [Variable]
while(@documento <= 1000)
begin
	execute sp_InsertarSalidaMasivo '2015-08-10',@documento 
	set @documento = @documento+1
end



-- ejecutar esta linea para cambiar el nombre a la columna costo ya que es ambigua
-- si crea la bd por primera vez no es necesario, ya se ha modificado el script de estructura de la base de datos
exec sp_rename 'EntradaDetalle.costo','costoTotal'
exec sp_rename 'SalidaDetalle.costo','costoTotal'


*/

-- Agregando mas datos a Tabla Marca
insert into Marca(nombreMarca) values('Epson'),('Canon'),('Xtech'),('Kingston'),('Intel'),
				     ('E-touch'),('Lenovo'),('Eset Nod'),('Avast'),('Durabrand'),
				     ('Aoc'),('Ubiquiti'),('SanDisk'),('Forza'),('Microsoft'),
				     ('APC'),('Aorus'),('HyperX'),('seagate'),('Wacom')
				      go

-- Agregando mas datos Tabla Productos
insert into Productos(nombre,descripcion,precio,costo,existencia,idMarca,idDimension,idColor)
values('Cable','Usb Extension Cable',35,15,15,13,3,1),('Cable','Cable Usb 4 Pines',35,15,25,13,3,5),
      ('Cable','Cable de audio stereo',50,15,15,1,3,1),('Cable','Cable audio 3.5 milimetros',35,15,25,13,3,5),
      ('Cable','Apple LightNigth',200,150,15,13,3,1),('Cable Adaptador','Microsoft Wireless Adapter',200,100,25,3,1),
      ('Espuma Limpiadora','Kit Limpieza',60,22,15,13,3,1),('Limpia Contactos','Kit Limpieza',80,32,25,13,3,2),
      
-- Agregando mas datos Tabla Productos
insert into Productos(nombre,descripcion,precio,costo,existencia,idMarca,idDimension,idColor)
values('Cable','Usb Extension Cable',35,15,15,13,3,1),('Cable','Cable Usb 4 Pines',35,15,25,13,3,5),
      ('Cable','Cable de audio stereo',50,15,15,1,3,1),('Cable','Cable audio 3.5 milimetros',35,15,25,13,3,5),
      ('Cable','Apple LightNigth',200,150,15,13,3,1),('Cable Adaptador','Microsoft Wireless Adapter',200,100,15,25,3,1),
      ('Espuma Limpiadora','Kit Limpieza',60,22,15,13,3,1),('Limpia Contactos','Kit Limpieza',80,32,25,13,3,2),
      ('Pad','Alfombra para mouse',50,20,15,5,3,1),('Aire Comprimido','Kit Limpieza',85,32,25,13,3,2),
      ('Notebook Stan','Ventilador y soporte Laptop',300,100,15,25,3,2),('Adaptador Cargador','regula voltaje 110/220 laptop',250,100,15,24,3,2),
      ('Servidor','Para montar en bastidos',7900,5000,15,1,3,1),('Servidor Dell','Rack-Moutable',10200,7500,15,1,3,2),
      ('Computador Todo en uno','Todo en uno',3500,2000,15,2,3,2),('Computadora','De esccritorio',3750,2000,15,3,3,2),
      ('Adaptador de Corriente','C/A 110/220',250,100,15,3,3,1),('Power Adapter','Adaptador de potencia',250,100,15,24,3,2),
      ('UPS','Para conectar equipos',550,300,15,24,3,1),('Bateria Backup','Distribuidor de voltaje para UPS',500,200,25,13,3,2),
      ('Regulador en Linea','Regulador automatico de Voltaje',750,450,15,20,3,1),('Barebones','MiniOrdenador',900,700,25,1,3,2),
      ('Gabinete','Media Torre para ensamblaje',250,100,15,1,3,2),('Ventilador','Para Gabinete 120 mm',100,45,15,5,3,1),
      ('Sistema Refrigeracion Lìquida','Ventilador para Servidor',450,300,15,5,3,3),('Ventilador de Sistema','Para Prolian 90',600,400,15,6,3,2),
      ('Tarjeta Madre','Placa Base ATX',500,300,15,14,1,1),('Motherboard','Micro ATX',750,500,15,15,1,2),
      ('Placa Base','tarjeta madre modelo MSI A68',300,150,15,14,1,1),('Fuente de Poder','500 wats',250,100,15,1,1,2),
      ('Fuente Alimentacion','Para gabinente 12V',225,100,15,2,1,1),('Fuente Redundante','Para Servidor',450,300,15,14,3,2),
      ('Procesador 8 nucleos','Intel Xenon X5',1200,750,15,15,1,1),('Procesador 10 nucleos','intel Xenon 2.4 GH',1750,1200,25,15,3,2),
      ('Procesador 4 nucleos','Core i5',1100,800,15,15,1,1),('Tarjeta de Video','Radeon R7',500,400,25,28,1,2),
      ('Tarjeta Grafica','GF GT 730',650,450,15,28,3,1),('Adaptador Micro Sd','hasta 32GB',75,25,25,14,1,3),
      ('Tarjeta de Memoria Flash','Estandar SanDisk 16GB',80,45,15,14,1,1),('Memoria MicroSD 8GB','Micro 8GB',85,32,25,13,3,2),
      ('Memoria MicroSD 16GB','Micro 16GB',90,45,15,15,1,1),('Memoria MicroSD 32GB','Micro 32GB',125,75,25,15,1,3),
      ('Lectora CD','Lee y Quema CD/DVD',325,200,15,2,3,1),('Memoria Ram 8GB','DDR3',450,225,25,14,3,3),
      ('Memoria Ram 4GB','DDR4',300,200,15,14,3,1),('Memoria Ram DDR3L','Micro 8GB',450,225,25,14,3,3),
      ('Memoria ValueRam 4GB','FlueRam',300,200,15,14,3,1),('Memoria Ram HyperX','8GB',450,225,25,14,3,3),
      ('Disco Duro Externo','2TB',1000,600,15,14,3,1),('Disco Duro Interno','1TB',850,500,25,14,1,3)
      go
      
