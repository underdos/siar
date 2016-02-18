drop table  if exists user;
create table user (
	nip varchar(10) primary key not null,
	username varchar(20) not null,
	password varchar(20) not null,
	level int not null,
	nama varchar(50) not null,
	jabatan varchar(50) not null,
	id_cab int not null
);

drop table if exists cabang;
create table cabang (	
	id_cab int not null,
	nama_cab varchar(50) not null
);

drop table if exists transaksi;
create table transaksi (
	nip varchar(10) not null,
	id_cab int not null,
	tgl date not null,
	voucher varchar(15) not null,
	deskripsi varchar(300) not null,
	debit double,
	credit double,
	remarks varchar(300)
)