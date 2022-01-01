select *
from db_agi.info_mata_kuliah imk ;

select *
from db_agi.mata_kuliah mk ;

select *
from db_agi.pengambilan_mata_kuliah pmk ;

select mk.*, imk.beban_sks, imk.butuh_praktek
from db_agi.info_mata_kuliah imk 
left join db_agi.mata_kuliah mk ON
	imk.id_mata_kuliah = mk.id ; 
	
DELETE FROM db_agi.mata_kuliah
WHERE id = '00334' ;