USE LOGANTA;
GO
---
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','CORTAVIENTO DE DRIL PARA USO SOBRE EL CASCO - NACIONAL - CORTAVIENTO COLOR AZUL');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('PAR','GUANTE ANTICORTE - TARWER CLUTE - GUANTES DE HILO CON PALMA DE LATEX TALLA ESTANDAR');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('PAR','GUANTE DE JEBE DE USO INDUSTRIAL CALIBRE 25 TALLE 9 - ETERNA');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('PAR','GUANTE DE JEBE DE USO INDUSTRIAL CALIBRE 36 TALLE 9 - ETERNA');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','PONCHO DE JEBE CON CAPUCHA - CAPUTIN DE PVC PARA LLUVIA');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','TAPON DE SODIO DE SILICONA HIPOALERGENICA X 200 - ASTARA');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','UNIFORME DE DRIL (PANTALON Y CAMISA) PARA OBRERO UNISEX - NACIONAL - CAMISA Y PANTALON DRIL COLOR NARANJA CON CINTA REFLECTIVA PARA OBRA');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Taladro Percutor 1/2" 600W El�ctrico + 50 accesorios');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Taladro Atornidor 3/8" 12V Inal�mbrico + 50 accesorios');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Soldadora de Arco 250A');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Cerradura Sobreponer Blindada 800 - Canotol');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','L�quido Radiador Rojo 1Gl - Vistony');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Set 25 Llaves y Dados 1/2" Milimetros/Pulgadas');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Sierra Caladora 570W el�ctrica - Bauker');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Herramienta Multifuncional In�lambrica 18V Free Power Sin Bateria	');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Lijadora Orbital 1/4" 200W El�ctrica');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Set de Herramientas 9 Piezas - RedLine');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Caja de Herramientas Tool Box - Bosh');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Bolsa de Nylon para Transporte de Herramientas - Bosh');
INSERT INTO Item(UnidadDeMedida,Descripcion) VALUES('UNIDAD','Set de Herramientas para Camping - Klimber');
---
INSERT INTO PedidoEstado(Descripcion) VALUES('PENDIENTE');
INSERT INTO PedidoEstado(Descripcion) VALUES('APROBADO POR EL SOLICITANTE');
INSERT INTO PedidoEstado(Descripcion) VALUES('DESAPROBADO POR EL SOLICITANTE');
---
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) VALUES('DIRECCION DE INFRAESTRUCTURA Y ACONDICIONAMIENTO TERRITORIAL','CONSUMO','YABAR REYES BRYAN DASKE','GERENCIA PERMANENTE PROYECTOS','COMPRA DE EPP PARA LA OBRA "CREACION DE LOS SERVICIOS DE COMERCIALIZACION DEL MERCADO DE ABASTOS DEL DISTRITO DE ANTABAMBA - PROVINCIA ANTABAMBA - APURIMAC"','2021-02-09 05:23:38',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('9 Buena Vista Place','CONSUMO', 'Standford Borthram','GERENCIA PERMANENTE PROYECTOS','','2020-01-14 19:16:34',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('0 Summit Point','CONSUMO', 'Margy Boyde','GERENCIA PERMANENTE PROYECTOS','','2019-04-19 08:32:16',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('32664 Iowa Point','CONSUMO', 'Tomi Daye','GERENCIA PERMANENTE PROYECTOS','','2021-03-13 00:43:15',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('3 Havey Lane','CONSUMO', 'Nicolle Arons','GERENCIA PERMANENTE PROYECTOS','','2019-05-15 14:24:51',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('2 Brown Parkway','CONSUMO', 'Tessa Primrose','GERENCIA PERMANENTE PROYECTOS','','2020-02-05 09:11:28',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('8 Tennessee Pass','CONSUMO', 'Carin Frichley','GERENCIA PERMANENTE PROYECTOS','','2019-12-15 01:45:15',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('7850 Arkansas Point','CONSUMO', 'Alysia Cordelet','GERENCIA PERMANENTE PROYECTOS','','2020-06-01 14:43:34',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('01 Farwell Trail','CONSUMO', 'Corliss L Hommeau','GERENCIA PERMANENTE PROYECTOS','','2019-06-27 17:37:23',1);
INSERT INTO Pedido(DireccionDeSolicitante,TipoDeUso,EntregarA,ActividadOperativa,Motivo,Fecha,PedidoEstadoId) values ('8877 Fordem Place','CONSUMO', 'Nicoline Kemsley','GERENCIA PERMANENTE PROYECTOS','','2021-02-09 05:23:38',1);
---
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (158, 14, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (37, 3, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (138, 17, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (314, 13, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (432, 6, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (469, 17, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (468, 6, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (219, 11, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (447, 9, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (246, 3, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (226, 12, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (432, 4, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (27, 16, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (213, 19, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (360, 1, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (478, 19, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (47, 13, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (17, 18, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (34, 6, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (75, 11, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (461, 15, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (125, 11, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (323, 4, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (325, 3, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (36, 19, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (195, 14, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (71, 4, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (66, 8, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (55, 6, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (444, 12, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (447, 15, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (479, 2, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (236, 3, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (495, 14, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (54, 15, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (445, 7, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (58, 17, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (410, 17, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (93, 12, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (260, 16, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (414, 6, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (409, 12, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (10, 15, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (74, 10, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (428, 7, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (487, 1, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (349, 17, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (27, 6, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (234, 11, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (138, 3, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (325, 18, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (218, 8, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (462, 9, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (462, 17, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (469, 12, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (466, 5, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (351, 1, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (192, 10, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (361, 7, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (233, 16, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (75, 17, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (69, 7, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (313, 8, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (414, 6, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (133, 10, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (392, 5, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (490, 3, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (90, 6, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (375, 19, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (421, 3, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (416, 9, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (226, 15, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (45, 17, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (389, 18, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (360, 8, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (192, 9, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (366, 2, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (372, 20, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (342, 18, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (373, 6, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (283, 1, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (371, 8, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (351, 15, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (287, 2, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (374, 18, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (234, 11, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (449, 4, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (216, 4, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (254, 10, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (149, 18, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (214, 6, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (329, 16, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (201, 16, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (172, 18, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (33, 1, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (408, 6, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (222, 2, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (165, 18, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (329, 3, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (407, 12, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (134, 16, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (38, 2, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (59, 1, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (268, 8, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (476, 16, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (396, 14, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (23, 3, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (107, 4, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (281, 2, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (208, 7, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (203, 19, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (362, 20, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (357, 20, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (201, 17, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (92, 20, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (430, 14, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (87, 3, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (80, 13, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (375, 12, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (331, 4, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (310, 10, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (453, 20, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (309, 15, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (446, 5, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (202, 11, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (411, 14, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (165, 19, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (445, 12, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (357, 11, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (436, 9, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (450, 17, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (105, 7, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (304, 4, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (314, 9, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (55, 18, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (122, 11, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (275, 18, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (184, 6, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (35, 7, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (253, 1, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (304, 19, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (65, 19, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (378, 10, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (316, 12, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (321, 20, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (265, 12, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (128, 8, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (373, 3, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (104, 10, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (381, 5, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (135, 6, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (378, 6, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (149, 4, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (266, 1, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (340, 8, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (44, 8, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (313, 9, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (320, 4, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (48, 13, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (409, 5, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (104, 17, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (288, 2, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (468, 7, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (265, 2, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (468, 1, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (429, 14, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (224, 14, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (331, 7, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (236, 7, 7);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (379, 5, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (455, 3, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (151, 3, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (130, 3, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (83, 7, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (70, 5, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (475, 10, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (283, 18, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (235, 14, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (398, 4, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (282, 2, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (221, 15, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (366, 14, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (154, 18, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (242, 11, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (499, 14, 2);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (181, 17, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (80, 18, 3);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (497, 11, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (332, 19, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (18, 7, 4);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (182, 16, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (500, 11, 8);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (280, 17, 1);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (154, 6, 10);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (325, 12, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (281, 6, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (29, 19, 5);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (224, 18, 9);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (413, 16, 6);
insert into ItemXPedido (Cantidad, ItemId, PedidoId) values (497, 14, 8);
INSERT INTO ItemXPedido(Cantidad,ItemId,PedidoId) VALUES(50,1,1);
INSERT INTO ItemXPedido(Cantidad,ItemId,PedidoId) VALUES(300,2,1);
INSERT INTO ItemXPedido(Cantidad,ItemId,PedidoId) VALUES(10,3,1);
INSERT INTO ItemXPedido(Cantidad,ItemId,PedidoId) VALUES(10,4,1);
INSERT INTO ItemXPedido(Cantidad,ItemId,PedidoId) VALUES(50,5,1);
INSERT INTO ItemXPedido(Cantidad,ItemId,PedidoId) VALUES(100,6,1);
INSERT INTO ItemXPedido(Cantidad,ItemId,PedidoId) VALUES(100,7,1);
---