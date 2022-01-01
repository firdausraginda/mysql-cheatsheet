select *
from db_agi.dosen ;

select *
from db_agi.mata_kuliah ;

select *
from db_agi.dosen d 
left join db_agi.mata_kuliah mk 
	on d.nip = mk.nip 
order by d.nama;

-- update nip 'thebault', he teaches 'communication' & 'business'
-- will set the nip in table mata_kuliah to NULL
UPDATE db_agi.dosen
SET 
    nip = '99999'
WHERE
    nip = '13071';

-- remove dosen named 'kim', he teaches 'accounting' & 'management'
-- will remove 1 row from table dosen, and 2 rows from table mata_kuliah
DELETE FROM db_agi.dosen
WHERE nip = '70578' ;