/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     5/06/2018 5:34:19 p. m.                      */
/*==============================================================*/


alter table ETAPAVACUNA 
   drop foreign key FK_ETAPAVAC_PERTENECE_ETAPA;

alter table ETAPAVACUNA 
   drop foreign key FK_ETAPAVAC_TIENE_VACUNA;

alter table PACIENTEETAPA 
   drop foreign key FK_PACIENTE_RELATIONS_ETAPA;

alter table PACIENTEETAPA 
   drop foreign key FK_PACIENTE_SEVACUNA_PACIENTE;

drop table if exists ETAPA;


alter table ETAPAVACUNA 
   drop foreign key FK_ETAPAVAC_PERTENECE_ETAPA;

alter table ETAPAVACUNA 
   drop foreign key FK_ETAPAVAC_TIENE_VACUNA;

drop table if exists ETAPAVACUNA;

drop table if exists PACIENTE;


alter table PACIENTEETAPA 
   drop foreign key FK_PACIENTE_SEVACUNA_PACIENTE;

alter table PACIENTEETAPA 
   drop foreign key FK_PACIENTE_RELATIONS_ETAPA;

drop table if exists PACIENTEETAPA;

drop table if exists VACUNA;

/*==============================================================*/
/* Table: ETAPA                                                 */
/*==============================================================*/
create table ETAPA
(
   IDETAPA              int not null  comment '',
   NOMBRE               char(200) not null  comment '',
   primary key (IDETAPA)
);

/*==============================================================*/
/* Table: ETAPAVACUNA                                           */
/*==============================================================*/
create table ETAPAVACUNA
(
   VAC_IDVACUNA         int not null  comment '',
   IDETAPA              int not null  comment ''
);

/*==============================================================*/
/* Table: PACIENTE                                              */
/*==============================================================*/
create table PACIENTE
(
   IDREGISTROCIVIL      int not null  comment '',
   NOMBRESAPELLIDOS     char(200) not null  comment '',
   FECHANACIMIENTO      date not null  comment '',
   NOMBRECONTACTO       char(100) not null  comment '',
   TELEFONOCONTACTO     char(30) not null  comment '',
   DIRECCION            char(30) not null  comment '',
   GENERO               char(5) not null  comment '',
   primary key (IDREGISTROCIVIL)
);

/*==============================================================*/
/* Table: PACIENTEETAPA                                         */
/*==============================================================*/
create table PACIENTEETAPA
(
   IDETAPA              int not null  comment '',
   IDREGISTROCIVIL      int not null  comment '',
   FECHA                date not null  comment '',
   ESTADO               char(20) not null  comment ''
);

/*==============================================================*/
/* Table: VACUNA                                                */
/*==============================================================*/
create table VACUNA
(
   IDVACUNA             int not null  comment '',
   NOMBRE               char(30) not null  comment '',
   primary key (IDVACUNA)
);

alter table ETAPAVACUNA add constraint FK_ETAPAVAC_PERTENECE_ETAPA foreign key (IDETAPA)
      references ETAPA (IDETAPA) on delete restrict on update restrict;

alter table ETAPAVACUNA add constraint FK_ETAPAVAC_TIENE_VACUNA foreign key (VAC_IDVACUNA)
      references VACUNA (IDVACUNA) on delete restrict on update restrict;

alter table PACIENTEETAPA add constraint FK_PACIENTE_RELATIONS_ETAPA foreign key (IDETAPA)
      references ETAPA (IDETAPA) on delete restrict on update restrict;

alter table PACIENTEETAPA add constraint FK_PACIENTE_SEVACUNA_PACIENTE foreign key (IDREGISTROCIVIL)
      references PACIENTE (IDREGISTROCIVIL) on delete restrict on update restrict;


--  datos

INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES ('123', 'carlos realpe', '2018-06-14', 'maria lopez', '214554', 'centro', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES ('124', 'pedro sanches', '2018-05-14', 'carmen chantre', '214dad4', 'cali', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES ('125', 'julian topa', '2018-07-16', 'sandra topa', '214554', 'centro', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES ('126', 'nathalia velasco', '2018-01-01', 'eujenia bravo', '2145245', 'piendamo', 'm');
INSERT INTO `paciente` (`IDREGISTROCIVIL`, `NOMBRESAPELLIDOS`, `FECHANACIMIENTO`, `NOMBRECONTACTO`, `TELEFONOCONTACTO`, `DIRECCION`, `GENERO`) VALUES ('127', 'maricela narvaez', '2018-09-17', 'marta narvaez', '21454354', 'bogota', 'f');


INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('1', 'etapa1');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('2', 'etapa2');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('3', 'etapa3');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('4', 'etapa4');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('5', 'etapa5');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('6', 'etapa6');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('7', 'etapa7');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('8', 'etapa8');
INSERT INTO `etapa` (`IDETAPA`, `NOMBRE`) VALUES ('9', 'etapa9');


INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('1','123','2018-06-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('2','123','2018-08-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('3','123','2018-11-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('4','123','2018-01-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('5','123','2018-04-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('6','123','2018-05-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('7','123','2018-08-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('8','123','2018-11-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('9','123','2018-14-13','no aplicada');

INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('1','124','2018-12-18','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('2','124','2018-02-18','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('3','124','2018-04-18','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('4','124','2018-07-18','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('5','124','2018-10-18','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('6','124','2018-12-18','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('7','124','2018-01-18','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('8','124','2018-03-18','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('9','124','2018-06-18','no aplicada');

INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('1','125','2018-10-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('2','125','2018-12-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('3','125','2018-02-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('4','125','2018-04-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('5','125','2018-06-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('6','125','2018-08-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('7','125','2018-09-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('8','125','2018-11-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('9','125','2018-12-13','no aplicada');

INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('1','126','2018-09-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('2','126','2018-11-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('3','126','2018-01-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('4','126','2018-03-13','aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('5','126','2018-05-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('6','126','2018-06-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('7','126','2018-08-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('8','126','2018-11-13','no aplicada');
INSERT INTO `pacienteetapa`(`IDETAPA`, `IDREGISTROCIVIL`, `FECHA`, `ESTADO`) VALUES ('9','126','2018-01-13','no aplicada');

-- tabla vacunas

INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('1','Tuberculosis');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('2','HepatitisB');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('3','difteria tos ferina tetanos (DPT)');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('4','Haemopbius influenzae tipo b (Hib)');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('5','polio');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('6','Rotabirus');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('7','Neumococo');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('8','InfluenciaEstacional');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('9','sarampio rubiola paperas');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('10','varicela');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('11','HepatitisA');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('12','FiebreAmarilla');
INSERT INTO `vacuna`(`IDVACUNA`, `NOMBRE`) VALUES ('13','Sarampion rubeola paperas(SRP)');

--  tabla vacunasEtapa

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('1','1');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('2','1');

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('3','2');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('4','2');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('5','2');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('6','2');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('7','2');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('2','2');

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('3','3');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('4','3');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('5','3');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('6','3');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('7','3');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('2','3');

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('3','4');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('4','4');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('5','4');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('8','4');

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('8','5');

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('13','6');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('10','6');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('7','6');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('11','6');

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('3','7');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('5','7');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('12','7');

INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('3','8');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('4','8');
INSERT INTO `etapavacuna`(`VAC_IDVACUNA`, `IDETAPA`) VALUES ('13','8');



