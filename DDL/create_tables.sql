CREATE TABLE IF NOT EXISTS db_agi.mahasiswa (
	nim VARCHAR(5) PRIMARY KEY,
	nama VARCHAR(255) NOT NULL,
    semester INT(1)
);

CREATE TABLE IF NOT EXISTS db_agi.dosen (
	nip VARCHAR(5) PRIMARY KEY,
	nama VARCHAR(255) NOT NULL,
	status_mengajar ENUM('aktif', 'tidak aktif')
);

CREATE TABLE IF NOT EXISTS db_agi.mata_kuliah (
	id VARCHAR(5) PRIMARY KEY,
	nama VARCHAR(255) UNIQUE,
	deskripsi VARCHAR(255) NOT NULL,
	nip VARCHAR(5),
	FOREIGN KEY (nip) 
	    REFERENCES db_agi.dosen(nip) 
	    ON DELETE CASCADE 
		ON UPDATE SET NULL
);

CREATE TABLE IF NOT EXISTS db_agi.pengambilan_mata_kuliah (
	id VARCHAR(5) PRIMARY KEY,
	nim VARCHAR(5),
	id_mata_kuliah VARCHAR(5),
	FOREIGN KEY (nim) 
		REFERENCES db_agi.mahasiswa(nim)
		ON DELETE CASCADE,
	FOREIGN KEY (id_mata_kuliah) 
		REFERENCES db_agi.mata_kuliah(id)
		ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS db_agi.info_mata_kuliah (
	id_mata_kuliah VARCHAR(5) PRIMARY KEY,
	beban_sks INT(1),
	butuh_praktek BOOLEAN,
	FOREIGN KEY (id_mata_kuliah) 
		REFERENCES db_agi.mata_kuliah(id)
		ON DELETE CASCADE
);