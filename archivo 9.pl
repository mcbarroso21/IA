%Diagnostico de fallo de equipos tecnologicos

prop(1,'no enciende',p).
prop(2,'no calienta adecuadamente',p).
prop(3,'sobrecalentamiento',p).
prop(4,'medidor de temperatura inexacto',p).
prop(5,'fallos en los controles',p).
prop(6,'mal funcionamiento de 1 hornilla',p).
prop(7,'pantalla en blanco o negra',p).
prop(8,'pantalla tactil no responde',p).
prop(9,'datos moviles que no funcionan',p).
prop(10,'conexion intermitente de datos moviles',p).
prop(11,'bateria descargada',p).
prop(12,'fallo en el sistema de encendido',p).
prop(13,'falta de combustible',p).
prop(14,'problemas en el sistema de combustible',p).
prop(15,'problemas en el sistema de arranque',p).
prop(16,'problemas en el sistema de distribucion',p).

prop(101,'Cocina electrica de una hornilla con medidor de temperatura defectuosa',i).
prop(103,'Cocina electrica de dos hornillas defectuosa',i).
prop(104,'Smartphone con problema en la pantalla y en los datos moviles',i).
prop(105,'Automovil con motor de gasolina que no arranca,i).

regla(1,y,[1,2,3,4,5],101,0.4).
regal(2,y,[1,2,3,4,5,6],103,0.2).
regla(3,y,[7,8,9,10],104,0.8).
regla(4,y,[11,13,12,14,15,16],105,0.7).