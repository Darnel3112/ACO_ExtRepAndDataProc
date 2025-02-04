﻿
&НаКлиенте
Процедура Сформировать(Команда)
	СтрПечать = ПродолжитьПечатьНаСервере();
	УправлениеПечатьюКлиент.ПечатьДокументов(СтрПечать.КоллекцияПечатныхФорм, СтрПечать.ОбъектыПечати);
КонецПроцедуры

&НаСервере
Функция ПродолжитьПечатьНаСервере()
	
	СтрНастройки = Новый Структура; 
	СтрНастройки.Вставить("Глава", Глава);
	СтрНастройки.Вставить("Исполнитель", Исполнитель);
	
	КоллекцияПечатныхФорм = УправлениеПечатью.ПодготовитьКоллекциюПечатныхФорм("ПротоколОНазначенииРазмераПенсииЗаВыслугуЛет");
	ОбъектыПечати = Новый СписокЗначений;
	
	ОбработкаОбъект = РеквизитФормыВЗначение("Объект");
	ОбработкаОбъект.гДопДанные = СтрНастройки;
	ОбработкаОбъект.Печать(Параметры.МассивОбъектов, КоллекцияПечатныхФорм, ОбъектыПечати);
	
	СтрПечать = Новый Структура;	
	СтрПечать.Вставить("КоллекцияПечатныхФорм", ОбщегоНазначения.ТаблицаЗначенийВМассив(КоллекцияПечатныхФорм));
	СтрПечать.Вставить("ОбъектыПечати", ОбъектыПечати);
	
	Возврат СтрПечать;
	
КонецФункции 

