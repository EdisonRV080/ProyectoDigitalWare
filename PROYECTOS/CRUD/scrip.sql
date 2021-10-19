create table CLIENTES
(
  CLIENTE         VARCHAR2(12) not null,
  NOMBRE_CLIENTE  VARCHAR2(40) not null,
  DIRECCION       VARCHAR2(40)
);
alter table CLIENTES add constraint PK_CLIENTES primary key (CLIENTE);


create table CABEZA_FACTURA
(
  NUMERO   VARCHAR2(8) not null,
  FECHA    DATE not null,
  CLIENTE  VARCHAR2(12) not null,
  TOTAL    NUMBER(15) not null
);
alter table CABEZA_FACTURA add constraint PK_CAB_FACT_NUM primary key (NUMERO);  
alter table CABEZA_FACTURA
  add constraint FK_CAB_FACT_CLIENTE foreign key (CLIENTE)
  references CLIENTES (CLIENTE);


create table PRODUCTOS
(
  PRODUCTO           VARCHAR2(10) not null,
  NOMBRE_PRODUCTO    VARCHAR2(40) not null,
  VALOR              NUMBER(15) not null
);
alter table PRODUCTOS add constraint PK_PRODUCTOS primary key (PRODUCTO);
  

create table DETALLE_FACTURA
(
  NUMERO        VARCHAR2(8) not null,
  PRODUCTO      VARCHAR2(40) not null,
  CANTIDAD      VARCHAR2(40) not null,
  VALOR         NUMBER(15) not null
); 
alter table DETALLE_FACTURA
  add constraint FK_DET_FACT_NUMERO foreign key (NUMERO)
  references CABEZA_FACTURA (NUMERO);
alter table DETALLE_FACTURA
  add constraint FK_DET_FACT_PRODUCTO foreign key (PRODUCTO)
  references PRODUCTOS (PRODUCTO);
