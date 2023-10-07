%Deteccion de Enfermedades

prop(1,'tos persistente',p).
prop(2,'fatiga y debilidad',p).
prop(3,'perdida de peso involuntaria',p).
prop(4,'fiebre',p).
prop(5,'sudoracion nocturan',p).
prop(6,'dolor en el pecho',p).
prop(7,'falta de apetito',p).
prop(8,'fiebre alta y sudoracion',p).
prop(9,'dolor de cabeza',p).
prop(10,'confusion en los adultos mayores',p).
prop(11,'nausea y vomito',p).
prop(12,'dolores musculares y articulares',p).
prop(13,'debilidad generalizada',p).
prop(14,'problema en la ereccion en los hombres',p).
prop(15,'sed excesiva y boca reseca',p).
prop(16,'miccion frecuente',p).
prop(17,'vision borrosa',p).
prop(18,'infecciones recurrentes',p).
prop(19,'hormigueo',p).
prop(20,'picazon en la piel',p

prop(107,'Tuberculosis',i).
prop(108,'Neumonia',i).
prop(109,'Diabetes Mellitus tipo II',i).

regla(1,y,[1,2,3,4,5,6,7],107,0.9).
regal(2,y,[1,2,6,7,8,9,10,11,12,13,14],108,1).
regla(3,y,[15,16,2,3,17,,18,19,20],109,0.6).
