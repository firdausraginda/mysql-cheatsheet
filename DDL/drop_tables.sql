DROP TABLE db_agi.pengambilan_mata_kuliah ;
DROP TABLE db_agi.info_mata_kuliah ;
DROP TABLE db_agi.mata_kuliah ;
DROP TABLE db_agi.mahasiswa ;
DROP TABLE db_agi.dosen ;


-- if can't delete table due to foreign key constraint
DELETE FROM db_agi.mata_kuliah
WHERE nip is null;

-- need to remove foreign key manually from dbeaver

DELETE FROM db_agi.dosen ;