--------------------------------------------------------
-- Archivo creado  - miércoles-diciembre-27-2023   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$COL_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
MD_COL_NAME VARCHAR2(384),
MD_COL_NUM NUMBER,                 /* col# */
MD_COL_SEGCOL NUMBER,              /* segcol# */
MD_COL_TYPE NUMBER,                /* type# */
MD_COL_LEN NUMBER,
MD_COL_PREC NUMBER,                /* precision */
MD_COL_SCALE NUMBER,
MD_COL_CHARSETID NUMBER,           /* character set id */
MD_COL_CHARSETFORM NUMBER,         /* character set form */
MD_COL_ALT_TYPE VARCHAR2(4000),    /* adt type if any */
MD_COL_ALT_PREC NUMBER,            /* precision of the adt attribute */
MD_COL_ALT_CHAR_USED VARCHAR2(2),  /* charset used by the adt attribute */
MD_COL_ALT_LENGTH NUMBER,          /* length of the adt attribute */
MD_COL_ALT_XML_TYPE NUMBER,        /* 0/1. is xml_type column */
MD_COL_ALT_BINARYXML_TYPE NUMBER,  /* 0/1. is xml_type stored as binary */
MD_COL_ENC_ISENC VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ENC_NOSALT VARCHAR2(3) ,    /* 'YES'/'NO' */
MD_COL_ENC_ISLOB VARCHAR2(3) ,     /* 'YES'/'NO' */
MD_COL_ALT_OBJECTXML_TYPE NUMBER,  /* 0/1 xml_type stored as object */
MD_COL_HASNOTNULLDEFAULT VARCHAR2(3) ,   /* 'YES'/'NO' */
MD_COL_ALT_TYPE_OWNER VARCHAR2(384),  /* owner of the adt type if any */
PROPERTY NUMBER,
XCOLTYPEFLAGS NUMBER,
XOPQTYPEFLAGS NUMBER,
EAFLAGS NUMBER,
XFQCOLNAME VARCHAR2(4000),
SPARE1  NUMBER,                    /* col_def.nullable, based on col$.null$ */
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
OBJV# NUMBER,
INTCOL# NUMBER,
INTERVAL_LEADING_PRECISION NUMBER,
INTERVAL_TRAILING_PRECISION NUMBER,
TOID RAW(16),
TYPENAME VARCHAR2(384),
NUMINTCOLS NUMBER,
NUMATTRS NUMBER,
ADTORDER NUMBER,
LOGMNR_SPARE1 NUMBER,             /* col$.null$ */
LOGMNR_SPARE2 NUMBER,
LOGMNR_SPARE3 VARCHAR2(1000),
LOGMNR_SPARE4 DATE,
LOGMNR_SPARE5 NUMBER,
LOGMNR_SPARE6 NUMBER,
LOGMNR_SPARE7 NUMBER,
LOGMNR_SPARE8 NUMBER,
LOGMNR_SPARE9 NUMBER,
XTYPENAME VARCHAR2(4000),
XTOPINTCOL NUMBER,
XREFFEDTABLEOBJN NUMBER,
XREFFEDTABLEOBJV NUMBER,
XOPQTYPETYPE NUMBER,
XOPQLOBINTCOL NUMBER,
XOPQOBJINTCOL NUMBER,
XXMLINTCOL    NUMBER,
LOGMNRDERIVEDFLAGS NUMBER,
/* Following fields added in 12.2 */
COLLID      NUMBER,
COLLINTCOL#  NUMBER,
ACDRRESCOL# NUMBER
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$COL_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$COL_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$COL_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$GSBA_GG_REC" AS OBJECT
(
LOGMNR_UID NUMBER,
NAME           VARCHAR2(384),
VALUE          VARCHAR2(4000),
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$GSBA_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$GSBA_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$GSBA_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$KEY_GG_REC" as object
(
LOGMNR_UID NUMBER,
KEY# NUMBER,                   /* index obj# or con# */
KEY_FLAGS NUMBER,              /* index or constraint */
KEY_NAME VARCHAR2(384),        /* index name or constraint name */
INDEX_OWNER# NUMBER,
INDEX_OWNERNAME VARCHAR2(384),
COLNAME VARCHAR2(384),
INTCOL# NUMBER,
which number,
KEY_ORDER VARCHAR2(10),              /* asc or desc */
KEYCOL_FLAGS NUMBER,           /* Column properties such as is_null */
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$KEY_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$KEY_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$KEY_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$SEQ_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
NAME VARCHAR2(384),
OWNER# NUMBER,
OWNERNAME VARCHAR2(384),
FLAGS NUMBER,
MD_TAB_SEQCACHE NUMBER,
MD_TAB_SEQINCREMENTBY NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000)
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$SEQ_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$SEQ_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$SEQ_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$TAB_GG_REC" as object
(
LOGMNR_UID NUMBER,
OBJ# NUMBER,
BASEOBJV# NUMBER,
MD_TAB_USERID NUMBER,                /* owner# */
MD_TAB_COLCOUNT NUMBER,              /* user column count */
MD_TAB_TOTAL_COL_NUM NUMBER,         /* kernal column count */
MD_TAB_LOG_GROUP_EXISTS NUMBER,      /* Any log group exists for this table */
MD_TAB_IOT VARCHAR2(3) ,             /* 'YES'/'NO' IS IOT? */
MD_TAB_IOT_OVERFLOW VARCHAR2(3) ,    /* 'YES'/'NO' IOT with overflow ? */
MD_TAB_PARTITION  VARCHAR2(3) ,      /* 'YES'/'NO' is partitioned ? */
MD_TAB_SUBPARTITION VARCHAR2(3) ,    /* 'YES'/'NO' is sub partitioned? */
MD_TAB_XMLTYPETABLE VARCHAR2(3) ,    /* 'YES'/'NO' is xmltype table? */
MD_TAB_OBJECTID NUMBER,              /* object id if table object */
MD_TAB_OWNER VARCHAR2(384),     /* owner name */
MD_TAB_NAME VARCHAR2(384),      /* table name */
MD_TAB_OBJTYPE VARCHAR2(384),   /* Object type name */
MD_TAB_SCN NUMBER,                   /* COMMIT_SCN of this table version */
TAB_FLAGS NUMBER,
TRIGFLAG NUMBER,
OBJ_FLAGS NUMBER,
PROPERTY NUMBER,
PARTTYPE NUMBER,
SUBPARTTYPE NUMBER,
SPARE1  NUMBER,
SPARE2  NUMBER,
SPARE3  NUMBER,
SPARE4  VARCHAR2(4000),
SPARE5  VARCHAR2(4000),
SPARE6  VARCHAR2(4000),
/* Following fields added in 12.1.0.2 */
LVLCNT NUMBER,
LVL1OBJ# NUMBER,
LVL2OBJ# NUMBER,
LVL1TYPE# NUMBER,
LVL2TYPE# NUMBER,
LVL1NAME  VARCHAR2(384),
LVL2NAME  VARCHAR2(384),
INTCOLS   NUMBER,
ASSOC#    NUMBER,
XIDUSN    NUMBER,
XIDSLT    NUMBER,
XIDSQN    NUMBER,
DROP_SCN  NUMBER,
FLAGS     NUMBER,
LOGMNR_SPARE1   NUMBER,
LOGMNR_SPARE2   NUMBER,
LOGMNR_SPARE3   VARCHAR2(1000),
LOGMNR_SPARE4   DATE,
LOGMNR_SPARE5   NUMBER,
LOGMNR_SPARE6   NUMBER,
LOGMNR_SPARE7   NUMBER,
LOGMNR_SPARE8   NUMBER,
LOGMNR_SPARE9   NUMBER,
UNSUPPORTEDCOLS  NUMBER,
COMPLEXTYPECOLS  NUMBER,
NTPARENTOBJNUM   NUMBER,
NTPARENTOBJVERSION NUMBER,
NTPARENTINTCOLNUM  NUMBER,
LOGMNRTLOFLAGS    NUMBER,
LOGMNRMCV VARCHAR2(30),
/* Following fields added in 12.2 */
ACDRFLAGS        NUMBER,                                    /* automatic CDR */
ACDRTSOBJ#       NUMBER,                                    /* automatic CDR */
ACDRROWTSINTCOL# NUMBER                                     /* automatic CDR */
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$TAB_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$TAB_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$TAB_GG_REC;

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_REC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$USER_GG_REC" AS OBJECT
(
LOGMNR_UID     NUMBER,
USERNAME       VARCHAR2(384),
USERID         NUMBER,
LOGMNR_SPARE1  NUMBER,
LOGMNR_SPARE2  NUMBER,
LOGMNR_SPARE3  VARCHAR2(4000),
LOGMNR_SPARE4  DATE
);

/
--------------------------------------------------------
--  DDL for Type LOGMNR$USER_GG_RECS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TYPE "SYSTEM"."LOGMNR$USER_GG_RECS" AS TABLE OF  SYSTEM.LOGMNR$USER_GG_REC;

/
--------------------------------------------------------
--  DDL for Sequence DBOBJECTID_SEQUENCE
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."DBOBJECTID_SEQUENCE"  MINVALUE 1 MAXVALUE 999999999999999999999999 INCREMENT BY 50 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_DIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_DIDS$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_EVOLVE_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_EVOLVE_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence LOGMNR_UIDS$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."LOGMNR_UIDS$"  MINVALUE 100 MAXVALUE 99999 INCREMENT BY 1 START WITH 100 NOCACHE  ORDER  CYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_GENERIC
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_GENERIC"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 50 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence MVIEW$_ADVSEQ_ID
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."MVIEW$_ADVSEQ_ID"  MINVALUE 1 MAXVALUE 4294967295 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Sequence ROLLING_EVENT_SEQ$
--------------------------------------------------------

   CREATE SEQUENCE  "SYSTEM"."ROLLING_EVENT_SEQ$"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  ORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;
--------------------------------------------------------
--  DDL for Table COMPRA
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."COMPRA" 
   (	"IDCOMPRA" NUMBER GENERATED BY DEFAULT AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"IDUSUARIO" NUMBER, 
	"CODIGOPRODUCTO" VARCHAR2(255 BYTE), 
	"FECHACOMPRA" DATE
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table USUARIO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."USUARIO" 
   (	"IDUSUARIO" NUMBER(10,0) GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE , 
	"MAIL" VARCHAR2(255 BYTE), 
	"NOMBRE" VARCHAR2(255 BYTE), 
	"ROL" VARCHAR2(50 BYTE), 
	"CONTRASEÑA" VARCHAR2(255 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table STOCKVENTAPRODUCTO
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."STOCKVENTAPRODUCTO" 
   (	"IDUSUARIO" NUMBER(10,0), 
	"CODIGOPRODUCTO" VARCHAR2(255 BYTE), 
	"NOMBREPRODUCTO" VARCHAR2(255 BYTE), 
	"CANTIDADPRODUCTO" NUMBER(10,0), 
	"PRECIOPRODUCTO" NUMBER(10,2)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for View MGV_ALL_CAPTURED_SQL
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_CAPTURED_SQL" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME", "NATIVE_SQL", "LINECOUNT") AS 
  SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME", p.native_sql,p.linecount 
FROM md_stored_programs p , mgv_all_programs_details d
WHERE p.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
UNION ALL
SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME",v.native_sql,v.linecount
FROM md_views v , mgv_all_view_details d
WHERE v.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
UNION ALL
SELECT d."OBJTYPE",d."OBJNAME",d."OBJID",d."MAINOBJTYPE",d."MAINOBJNAME",d."MAINOBJID",d."SCHEMANAME",d."SCHEMAID",d."CATALOGNAME",d."CATALOGID",d."CONNNAME",d."CONNID",d."PROJECTNAME",d."PROJECTID",d."CAPTUREDORCONVERTED",d."QUALIFIEDNAME" ,t.native_sql,t.linecount
FROM md_triggers t , mgv_all_trigger_details d
WHERE t.id = d.objid
AND d.capturedorconverted = 'CAPTURED'
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CATALOG_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_CATALOG_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_CATALOGS' objtype, cat.catalog_name objname, cat.id objid,  'MD_CATALOGS' MainObjType,cat.catalog_name MAINOBJNAME, cat.id MAINOBJID,null SchemaName,null schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name ELSE NULL END QualifiedName
FROM  MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE  cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CATALOGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_CATALOGS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "DBURL", "CATALOG_ID", "CATALOG_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name
  FROM md_projects ,
    md_connections,
    md_catalogs
  WHERE md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk   = md_projects.id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_COLUMN_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_COLUMN_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_COLUMNS' objtype, c.COLUMN_NAME objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.COLUMN_NAME QualifiedName
FROM MD_COLUMNS c, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_COLUMNDT_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_COLUMNDT_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME", "DATATYPE", "ISIDENTITY") AS 
  SELECT 'MD_COLUMNS' objtype, c.COLUMN_NAME objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname ,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.COLUMN_NAME QualifiedName,
c.column_type datatype,
CASE WHEN p.PROP_KEY='SEEDVALUE' THEN 'Y' ELSE 'N' END IsIdentity
FROM MD_COLUMNS c LEFT OUTER JOIN MD_ADDITIONAL_PROPERTIES p ON c.id =p.ref_id_fk
, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn,MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CONNECTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_CONNECTIONS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "CONNECTION_NAME", "HOST", "PORT", "USERNAME", "DBURL") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    MD_CONNECTIONS.ID CONNECTION_ID ,
    MD_CONNECTIONS.NAME CONNECTION_NAME,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl
  FROM md_projects,
    md_connections
  WHERE MD_CONNECTIONS.PROJECT_ID_FK = MD_PROJECTS.ID
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_CONSTRAINTS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_CONSTRAINTS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_CONSTRAINTS' objtype, c.name objname, c.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||t.table_name ||'.'||c.name QualifiedName
FROM MD_CONSTRAINTS c, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE c.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_CATALOG_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_SCHEMA_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_TABLES_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_COLUMN_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_CONSTRAINTS_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_INDEX_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_TRIGGER_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_VIEW_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_PROGRAMS_DETAILS
UNION ALL
SELECT "OBJTYPE","OBJNAME","OBJID","MAINOBJTYPE","MAINOBJNAME","MAINOBJID","SCHEMANAME","SCHEMAID","CATALOGNAME","CATALOGID","CONNNAME","CONNID","PROJECTNAME","PROJECTID","CAPTUREDORCONVERTED","QUALIFIEDNAME" FROM MGV_ALL_PARTITIONS_DETAILS
;
--------------------------------------------------------
--  DDL for View MGV_ALL_INDEX_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_INDEX_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_INDEXES' objtype,i.index_name objname, i.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME,t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid, proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||i.index_name  QualifiedName
FROM MD_INDEXES i, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn,MD_PROJECTS proj
WHERE i.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_PARTITIONS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_PARTITIONS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_PARTITIONS' objtype, 'PARTTITION_EXP' objname, t.id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN   md_meta.quote(cat.catalog_name,s.name,t.table_name,conn.id)
                            ELSE   s.name || '.' || t.table_name END QualifiedName
FROM MD_PARTITIONS p, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE p.table_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_PROGRAMS_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_PROGRAMS_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_STORED_PROGRAMS' objtype,p.name objname, p.Id objid,  'MD_STORED_PROGRAMS' MainObjType,p.name MAINOBJNAME,p.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||p.name  QualifiedName
FROM MD_STORED_PROGRAMS p,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE p.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_SCHEMA
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_SCHEMA" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_schemas.id schema_id ,
    md_schemas.name schema_name
  FROM md_connections,
    md_catalogs ,
    md_schemas ,
    md_projects
  WHERE md_schemas.catalog_id_fk   = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_SCHEMA_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_SCHEMA_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_SCHEMAS' objtype, s.name objname, s.id objid,  'MD_SCHEMAS' MainObjType,s.name MAINOBJNAME, s.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name QualifiedName
FROM MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_STORED_PROGRAMS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_STORED_PROGRAMS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "STORED_PROGRAM_ID", "PROGRAMTYPE", "STORED_PROGRAM_NAME", "PACKAGE_ID_FK") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name ,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_stored_programs.id stored_program_id ,
    md_stored_programs.programtype programtype ,
    md_stored_programs.name stored_program_name,
    md_stored_programs.package_id_fk package_id_fk
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_stored_programs
  WHERE md_stored_programs.schema_id_fk = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_TABLES" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "DBURL", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "TABLE_ID", "TABLE_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_connections.dburl dburl ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_tables.id table_id ,
    md_tables.TABLE_NAME TABLE_NAME
  FROM md_connections,
    md_catalogs ,
    md_schemas ,
    md_tables ,
    md_projects
  WHERE md_tables.schema_id_fk     = md_schemas.id
  AND md_schemas.catalog_id_fk     = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLES_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_TABLES_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_TABLES' objtype, t.table_name objname, t.id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME, t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN   md_meta.quote(cat.catalog_name,s.name,t.table_name,conn.id)
                            ELSE   s.name || '.' || t.table_name END QualifiedName
FROM MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TABLE_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_TABLE_TRIGGERS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "TABLE_ID", "TABLE_NAME", "TRIGGER_ID", "TRIGGER_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_tables.id table_id ,
    md_tables.TABLE_NAME TABLE_NAME ,
    md_triggers.id trigger_id ,
    md_triggers.trigger_name trigger_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_tables ,
    md_triggers
  WHERE md_triggers.table_or_view_id_fk = md_tables.id
  AND md_tables.schema_id_fk            = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_TRIGGER_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_TRIGGER_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_TRIGGERS' objtype,trig.trigger_name objname, trig.Id objid,  'MD_TABLES' MainObjType,t.table_name MAINOBJNAME,t.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||trig.trigger_name  QualifiedName
FROM MD_TRIGGERS trig, MD_TABLES t,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE trig.table_or_view_id_fk = t.id
AND t.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id 
UNION ALL
SELECT 'MD_TRIGGERS' objtype,trig.trigger_name objname, trig.Id objid,  'MD_VIEWS' MainObjType,v.view_name MAINOBJNAME,v.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||trig.trigger_name  QualifiedName
FROM MD_TRIGGERS trig, MD_VIEWS v,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE trig.table_or_view_id_fk = v.id
AND v.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id 
ORDER BY objid
;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEW_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_VIEW_DETAILS" ("OBJTYPE", "OBJNAME", "OBJID", "MAINOBJTYPE", "MAINOBJNAME", "MAINOBJID", "SCHEMANAME", "SCHEMAID", "CATALOGNAME", "CATALOGID", "CONNNAME", "CONNID", "PROJECTNAME", "PROJECTID", "CAPTUREDORCONVERTED", "QUALIFIEDNAME") AS 
  SELECT 'MD_VIEWS' objtype, v.view_name objname, v.Id objid,  'MD_VIEWS' MainObjType,v.view_name MAINOBJNAME,v.id MAINOBJID, s.name SchemaName, s.id schemaid, cat.catalog_name catalogname,cat.id catalogid, conn.name connname,conn.id  connid,proj.project_name projectname,proj.id projectid,
NVL(conn.type,'CAPTURED') CapturedOrConverted, 
CASE WHEN conn.type IS NULL THEN cat.catalog_name||'.' ELSE '' END || s.name||'.'||v.view_name  QualifiedName
FROM MD_VIEWS v,MD_SCHEMAS s, MD_CATALOGS cat,MD_CONNECTIONS conn, MD_PROJECTS proj
WHERE v.schema_id_fk = s.id
AND s.catalog_id_fk = cat.id
AND cat.connection_id_fk = conn.id
AND conn.PROJECT_ID_FK = proj.id
;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEWS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_VIEWS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "VIEW_ID", "VIEW_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_views.id view_id ,
    md_views.view_name view_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_views
  WHERE md_views.schema_id_fk      = md_schemas.id
  AND md_schemas.catalog_id_fk     = md_catalogs.id
  AND md_catalogs.connection_id_fk = md_connections.id
  AND md_connections.project_id_fk = md_projects.id
WITH READ ONLY;

   COMMENT ON TABLE "SYSTEM"."MGV_ALL_VIEWS"  IS 'View to iterate over all views in the system'
;
--------------------------------------------------------
--  DDL for View MGV_ALL_VIEW_TRIGGERS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_ALL_VIEW_TRIGGERS" ("PROJECT_ID", "PROJECT_NAME", "CONNECTION_ID", "HOST", "PORT", "USERNAME", "CATALOG_ID", "CATALOG_NAME", "DUMMY_FLAG", "SCHEMA_ID", "SCHEMA_NAME", "VIEW_ID", "VIEW_NAME", "TRIGGER_ID", "TRIGGER_NAME") AS 
  SELECT md_projects.id project_id ,
    md_projects.project_name project_name,
    md_connections.id connection_id ,
    md_connections.host host ,
    md_connections.port port ,
    md_connections.username username ,
    md_catalogs.id catalog_id ,
    md_catalogs.catalog_name catalog_name,
    md_catalogs.dummy_flag dummy_flag ,
    md_schemas.id schema_id ,
    md_schemas.name schema_name ,
    md_views.id view_id ,
    md_views.view_name view_name ,
    md_triggers.id trigger_id ,
    md_triggers.trigger_name trigger_name
  FROM md_projects ,
    md_connections,
    md_catalogs ,
    md_schemas ,
    md_views ,
    md_triggers
  WHERE md_triggers.table_or_view_id_fk = md_views.id
  AND md_views.schema_id_fk             = md_schemas.id
  AND md_schemas.catalog_id_fk          = md_catalogs.id
  AND md_catalogs.connection_id_fk      = md_connections.id
  AND md_connections.project_id_fk      = md_projects.id
;
--------------------------------------------------------
--  DDL for View MGV_DERIVATIVES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_DERIVATIVES" ("ID", "SRC_ID", "SRC_TYPE", "DERIVED_ID", "DERIVED_TYPE", "DERIVED_CONNECTION_ID_FK", "TRANSFORMED", "ORIGINAL_IDENTIFIER", "NEW_IDENTIFIER", "DERIVED_OBJECT_NAMESPACE", "DERIVATIVE_REASON", "SECURITY_GROUP_ID", "CREATED_ON", "CREATED_BY", "LAST_UPDATED_ON", "LAST_UPDATED_BY", "ENABLED") AS 
  SELECT "ID","SRC_ID","SRC_TYPE","DERIVED_ID","DERIVED_TYPE","DERIVED_CONNECTION_ID_FK","TRANSFORMED","ORIGINAL_IDENTIFIER","NEW_IDENTIFIER","DERIVED_OBJECT_NAMESPACE","DERIVATIVE_REASON","SECURITY_GROUP_ID","CREATED_ON","CREATED_BY","LAST_UPDATED_ON","LAST_UPDATED_BY","ENABLED" FROM MD_DERIVATIVES WHERE (Derivative_Reason <> 'SCRATCH' OR DERIVative_Reason IS NULL)
;
--------------------------------------------------------
--  DDL for View MGV_DERIVED_DETAILS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_DERIVED_DETAILS" ("CAPCATALOGID", "CAPCATALOGNAME", "CAPCONNID", "CAPCONNNAME", "CAPMAINOBJID", "CAPMAINOBJNAME", "CAPMAINOBJTYPE", "CAPOBJID", "CAPOBJNAME", "CAPOBJTYPE", "CAPPROJECTID", "CAPPROJECTNAME", "CAPQUALIFIEDNAME", "CAPSCHEMAID", "CAPSCHEMANAME", "CONCATALOGID", "CONCATALOGNAME", "CONCONNID", "CONCONNNAME", "CONMAINOBJID", "CONMAINOBJNAME", "CONMAINOBJTYPE", "CONOBJID", "CONOBJNAME", "CONOBJTYPE", "CONPROJECTID", "CONPROJECTNAME", "CONQUALIFIEDNAME", "CONSCHEMAID", "CONSCHEMANAME", "DERIVATIVE_REASON", "TRANSFORMED") AS 
  select d1.catalogid capcatalogid,
   d1.catalogname capcatalogname,
   d1.connid capconnid,
   d1.connname capconnname,
   d1.mainobjid capmainobjid,
   d1.mainobjname capmainobjname,
   d1.mainobjtype capmainobjtype ,
   d1.objid capobjid,
   d1.objname capobjname,
   d1.objtype capobjtype,
   d1.projectid capprojectid,
   d1.projectname capprojectname,
   d1.qualifiedname capqualifiedname,
   d1.schemaid capschemaid,
   d1.schemaname capschemaname,
   d2.catalogid concatalogid,
   d2.catalogname concatalogname,
   d2.connid conconnid,
   d2.connname conconnname,
   d2.mainobjid conmainobjid,
   d2.mainobjname conmainobjname,
   d2.mainobjtype conmainobjtype ,
   d2.objid conobjid,
   d2.objname conobjname,
   d2.objtype conobjtype,
   d2.projectid conprojectid,
   d2.projectname conprojectname,
   d2.qualifiedname conqualifiedname,
   d2.schemaid conschemaid,
   d2.schemaname conschemaname,
    der.derivative_reason,
    der.transformed
  FROM mgv_all_details d1
  LEFT OUTER JOIN md_derivatives der
  ON der.src_id              = d1.objid
  AND der.derivative_reason IS NULL
  LEFT OUTER JOIN mgv_all_details d2
  ON der.derived_id            = d2.objid
  WHERE d1.capturedorconverted = 'CAPTURED'
  AND der.derivative_reason   IS NULL
;
--------------------------------------------------------
--  DDL for View MGV_SCRATCH_DERIVATIVES
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MGV_SCRATCH_DERIVATIVES" ("ID", "SRC_ID", "SRC_TYPE", "DERIVED_ID", "DERIVED_TYPE", "DERIVED_CONNECTION_ID_FK", "TRANSFORMED", "ORIGINAL_IDENTIFIER", "NEW_IDENTIFIER", "DERIVED_OBJECT_NAMESPACE", "DERIVATIVE_REASON", "SECURITY_GROUP_ID", "CREATED_ON", "CREATED_BY", "LAST_UPDATED_ON", "LAST_UPDATED_BY", "ENABLED") AS 
  SELECT "ID","SRC_ID","SRC_TYPE","DERIVED_ID","DERIVED_TYPE","DERIVED_CONNECTION_ID_FK","TRANSFORMED","ORIGINAL_IDENTIFIER","NEW_IDENTIFIER","DERIVED_OBJECT_NAMESPACE","DERIVATIVE_REASON","SECURITY_GROUP_ID","CREATED_ON","CREATED_BY","LAST_UPDATED_ON","LAST_UPDATED_BY","ENABLED" FROM MD_DERIVATIVES WHERE Derivative_Reason = 'SCRATCH'
;
--------------------------------------------------------
--  DDL for View MVIEW_EVALUATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_EVALUATIONS" ("RUNID", "MVIEW_OWNER", "MVIEW_NAME", "RANK", "STORAGE_IN_BYTES", "FREQUENCY", "CUMULATIVE_BENEFIT", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  summary_owner AS mview_owner,
  summary_name AS mview_name,
  rank# as rank,
  storage_in_bytes,
  frequency,
  cumulative_benefit,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 1
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_EVALUATIONS"  IS 'This view gives DBA access to summary evaluation output'
;
--------------------------------------------------------
--  DDL for View MVIEW_EXCEPTIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_EXCEPTIONS" ("RUNID", "OWNER", "TABLE_NAME", "DIMENSION_NAME", "RELATIONSHIP", "BAD_ROWID") AS 
  select
  t1.runid# as runid,
  owner,
  table_name,
  dimension_name,
  relationship,
  bad_rowid
from SYSTEM.MVIEW$_ADV_EXCEPTIONS t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_EXCEPTIONS"  IS 'This view gives DBA access to dimension validation results'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTER
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_FILTER" ("FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filter a, system.mview$_adv_log b, ALL_USERS u
   WHERE a.filterid# = b.runid#
   AND b.uname = u.username
   AND u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTER"  IS 'Workload filter records'
;
--------------------------------------------------------
--  DDL for View MVIEW_FILTERINSTANCE
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_FILTERINSTANCE" ("RUNID", "FILTERID", "SUBFILTERNUM", "SUBFILTERTYPE", "STR_VALUE", "NUM_VALUE1", "NUM_VALUE2", "DATE_VALUE1", "DATE_VALUE2") AS 
  select
      a.runid# as runid,
      a.filterid# as filterid,
      a.subfilternum# as subfilternum,
      decode(a.subfiltertype,1,'APPLICATION',2,'CARDINALITY',3,'LASTUSE',
                             4,'FREQUENCY',5,'USER',6,'PRIORITY',7,'BASETABLE',
                             8,'RESPONSETIME',9,'COLLECTIONID',10,'TRACENAME',
                             11,'SCHEMA','UNKNOWN') AS subfiltertype,
      a.str_value,
      to_number(decode(a.num_value1,-999,NULL,a.num_value1)) AS num_value1,
      to_number(decode(a.num_value2,-999,NULL,a.num_value2)) AS num_value2,
      a.date_value1,
      a.date_value2
   from system.mview$_adv_filterinstance a;

   COMMENT ON TABLE "SYSTEM"."MVIEW_FILTERINSTANCE"  IS 'Workload filter instance records'
;
--------------------------------------------------------
--  DDL for View MVIEW_LOG
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_LOG" ("ID", "FILTERID", "RUN_BEGIN", "RUN_END", "TYPE", "STATUS", "MESSAGE", "COMPLETED", "TOTAL", "ERROR_CODE") AS 
  select
      m.runid# as id,
      m.filterid# as filterid,
      m.run_begin,
      m.run_end,
      decode(m.run_type,1,'EVALUATE',2,'EVALUATE_W',3,'RECOMMEND',
                      4,'RECOMMEND_W',5,'VALIDATE',6,'WORKLOAD',
                      7,'FILTER','UNKNOWN') AS type,
      decode(m.status,0,'UNUSED',1,'CANCELLED',2,'IN_PROGRESS',3,'COMPLETED',
                    4,'ERROR','UNKNOWN') AS status,
      m.message,
      m.completed,
      m.total,
      m.error_code
   from system.mview$_adv_log m, all_users u
   where m.uname = u.username
   and   u.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_LOG"  IS 'Advisor session log'
;
--------------------------------------------------------
--  DDL for View MVIEW_RECOMMENDATIONS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_RECOMMENDATIONS" ("RUNID", "ALL_TABLES", "FACT_TABLES", "GROUPING_LEVELS", "QUERY_TEXT", "RECOMMENDATION_NUMBER", "RECOMMENDED_ACTION", "MVIEW_OWNER", "MVIEW_NAME", "STORAGE_IN_BYTES", "PCT_PERFORMANCE_GAIN", "BENEFIT_TO_COST_RATIO") AS 
  select
  t1.runid# as runid,
  t1.from_clause as all_tables,
  fact_tables,
  grouping_levels,
  query_text,
  rank# as recommendation_number,
  action_type as recommended_action,
  summary_owner as mview_owner,
  summary_name as mview_name,
  storage_in_bytes,
  pct_performance_gain,
  benefit_to_cost_ratio
from SYSTEM.MVIEW$_ADV_OUTPUT t1, SYSTEM.MVIEW$_ADV_LOG t2, ALL_USERS u
where
  t1.runid# = t2.runid# and
  u.username = t2.uname and
  u.user_id = userenv('SCHEMAID') and
  t1.output_type = 0
order by t1.rank#;

   COMMENT ON TABLE "SYSTEM"."MVIEW_RECOMMENDATIONS"  IS 'This view gives DBA access to summary recommendations'
;
--------------------------------------------------------
--  DDL for View MVIEW_WORKLOAD
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."MVIEW_WORKLOAD" ("WORKLOADID", "IMPORT_TIME", "QUERYID", "APPLICATION", "CARDINALITY", "RESULTSIZE", "LASTUSE", "FREQUENCY", "OWNER", "PRIORITY", "QUERY", "RESPONSETIME") AS 
  select
  a.collectionid# as workloadid,
  a.collecttime as import_time,
  a.queryid# as queryid,
  a.application,
  a.cardinality,
  a.resultsize,
  a.qdate as lastuse,
  a.frequency,
  a.uname as owner,
  a.priority,
  a.sql_text as query,
  a.exec_time as responsetime
from SYSTEM.MVIEW$_ADV_WORKLOAD A, SYSTEM.MVIEW$_ADV_LOG B, ALL_USERS D
WHERE a.collectionid# = b.runid#
AND b.uname = d.username
AND d.user_id = userenv('SCHEMAID');

   COMMENT ON TABLE "SYSTEM"."MVIEW_WORKLOAD"  IS 'This view gives DBA access to shared workload'
;
--------------------------------------------------------
--  DDL for View PRODUCT_PRIVS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."PRODUCT_PRIVS" ("PRODUCT", "USERID", "ATTRIBUTE", "SCOPE", "NUMERIC_VALUE", "CHAR_VALUE", "DATE_VALUE", "LONG_VALUE") AS 
  SELECT PRODUCT, USERID, ATTRIBUTE, SCOPE,
         NUMERIC_VALUE, CHAR_VALUE, DATE_VALUE, LONG_VALUE
  FROM SQLPLUS_PRODUCT_PROFILE
  WHERE USERID = 'PUBLIC' OR
        USERID LIKE SYS_CONTEXT('USERENV','CURRENT_USER')
;
  GRANT READ ON "SYSTEM"."PRODUCT_PRIVS" TO PUBLIC;
--------------------------------------------------------
--  DDL for View SCHEDULER_JOB_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."SCHEDULER_JOB_ARGS" ("OWNER", "JOB_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "VALUE", "ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","JOB_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","VALUE","ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_job_args
;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_JOB_ARGS" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for View SCHEDULER_PROGRAM_ARGS
--------------------------------------------------------

  CREATE OR REPLACE FORCE NONEDITIONABLE VIEW "SYSTEM"."SCHEDULER_PROGRAM_ARGS" ("OWNER", "PROGRAM_NAME", "ARGUMENT_NAME", "ARGUMENT_POSITION", "ARGUMENT_TYPE", "METADATA_ATTRIBUTE", "DEFAULT_VALUE", "DEFAULT_ANYDATA_VALUE", "OUT_ARGUMENT") AS 
  SELECT "OWNER","PROGRAM_NAME","ARGUMENT_NAME","ARGUMENT_POSITION","ARGUMENT_TYPE","METADATA_ATTRIBUTE","DEFAULT_VALUE","DEFAULT_ANYDATA_VALUE","OUT_ARGUMENT" FROM sys.all_scheduler_program_args
;
  GRANT SELECT ON "SYSTEM"."SCHEDULER_PROGRAM_ARGS" TO "SELECT_CATALOG_ROLE";
--------------------------------------------------------
--  DDL for Materialized View MD_REGEX_CATALOG_MVIEW
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "SYSTEM"."MD_REGEX_CATALOG_MVIEW" ("PROJECT_ID", "CONNECTION_ID", "CONNECTION_NAME", "CATALOG_ID", "CATALOG_NAME", "ITEM", "VALUE")
  SEGMENT CREATION IMMEDIATE
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT  PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME, ITEM, SUM(VALUE) "VALUE" from MD_REGEX_SCHEMA_MVIEW
        group by  PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME, ITEM;

   COMMENT ON MATERIALIZED VIEW "SYSTEM"."MD_REGEX_CATALOG_MVIEW"  IS 'snapshot table for snapshot SYSTEM.MD_REGEX_CATALOG_MVIEW';
--------------------------------------------------------
--  DDL for Materialized View MD_REGEX_MVIEW
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "SYSTEM"."MD_REGEX_MVIEW" ("PROJECT_NAME", "PROJECT_ID", "CONNECTION_ID", "CONNECTION_NAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "PROGRAM_ID", "PROGRAM_NAME", "ITEM", "VALUE")
  SEGMENT CREATION IMMEDIATE
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT  pr.PROJECT_NAME, pr.ID "PROJECT_ID", c.ID "CONNECTION_ID", c.NAME "CONNECTION_NAME", mc.ID "CATALOG_ID",
        mc.CATALOG_NAME,s.id "SCHEMA_ID",s.NAME "SCHEMA_NAME", p.ID "PROGRAM_ID", p.name "PROGRAM_NAME",
        rg.DESCRIPTION "ITEM", regexp_count(p.native_sql,rg.REGEX,1,'ix') "VALUE"
FROM MD_STORED_PROGRAMS p,
  md_projects pr,
  md_connections c,
  md_schemas s,
  MD_CATALOGS mc,
  MD_CODE_REGEX rg
WHERE c.TYPE          IS NULL --Shows captured
AND mc.CONNECTION_ID_FK=c.id
AND mc.id              =s.CATALOG_ID_FK
AND pr.PROJECT_NAME LIKE 'SS%'
and pr.id=c.PROJECT_ID_FK
and p.SCHEMA_ID_FK=s.ID
and regexp_count(p.native_sql,rg.REGEX,1,'ix')>0;

   COMMENT ON MATERIALIZED VIEW "SYSTEM"."MD_REGEX_MVIEW"  IS 'snapshot table for snapshot SYSTEM.MD_REGEX_MVIEW';
--------------------------------------------------------
--  DDL for Materialized View MD_REGEX_SCHEMA_MVIEW
--------------------------------------------------------

  CREATE MATERIALIZED VIEW "SYSTEM"."MD_REGEX_SCHEMA_MVIEW" ("PROJECT_ID", "CONNECTION_ID", "CONNECTION_NAME", "CATALOG_ID", "CATALOG_NAME", "SCHEMA_ID", "SCHEMA_NAME", "ITEM", "VALUE")
  SEGMENT CREATION IMMEDIATE
  ORGANIZATION HEAP PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" 
  BUILD IMMEDIATE
  USING INDEX 
  REFRESH FORCE ON DEMAND
  USING DEFAULT LOCAL ROLLBACK SEGMENT
  USING ENFORCED CONSTRAINTS DISABLE ON QUERY COMPUTATION DISABLE QUERY REWRITE
  AS SELECT  PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME,SCHEMA_ID,SCHEMA_NAME, ITEM, SUM(VALUE) "VALUE" from MD_REGEX_MVIEW
        group by PROJECT_NAME, PROJECT_ID, CONNECTION_ID, CONNECTION_NAME,CATALOG_ID,
        CATALOG_NAME,SCHEMA_ID,SCHEMA_NAME, ITEM;

   COMMENT ON MATERIALIZED VIEW "SYSTEM"."MD_REGEX_SCHEMA_MVIEW"  IS 'snapshot table for snapshot SYSTEM.MD_REGEX_SCHEMA_MVIEW';
REM INSERTING into SYSTEM.COMPRA
SET DEFINE OFF;
REM INSERTING into SYSTEM.USUARIO
SET DEFINE OFF;
REM INSERTING into SYSTEM.STOCKVENTAPRODUCTO
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index SYS_C008338
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C008338" ON "SYSTEM"."COMPRA" ("IDCOMPRA") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008321
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C008321" ON "SYSTEM"."USUARIO" ("IDUSUARIO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index SYS_C008326
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."SYS_C008326" ON "SYSTEM"."STOCKVENTAPRODUCTO" ("CODIGOPRODUCTO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure COMPRA_INSERTAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."COMPRA_INSERTAR" (
p_idcomprador in int,
p_codigoproducto in varchar2,
p_fechacompra in DATE,
p_compra OUT SYS_REFCURSOR
)
as
begin
insert into compra(idusuario, codigoproducto, fechacompra) values(p_idcomprador, p_codigoproducto, p_fechacompra);

open p_compra for
select idusuario, codigoproducto, fechacompra
from compra
where idusuario = p_idcomprador and codigoproducto = p_codigoproducto and fechacompra = p_fechacompra;

update stockventaproducto set cantidadproducto = cantidadproducto - 1 where codigoproducto = p_codigoproducto;
end;

/
--------------------------------------------------------
--  DDL for Procedure COMPRA_RESUMEN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."COMPRA_RESUMEN" (
p_idcompra in number,
p_compraresumen OUT SYS_REFCURSOR
)
as
begin
open p_compraresumen for
select c.idcompra as idCompra, u.idusuario as idComprador, svp.idusuario as idVendedor, u.nombre as nombreComprador, svp.codigoproducto as codigoProducto, svp.nombreproducto as nombreProducto, svp.precioproducto as precioProducto, c.fechacompra as fechaCompra
from compra  c
inner join usuario u on (c.idusuario = u.idusuario)
inner join stockventaproducto svp on (c.codigoproducto = svp.codigoproducto)
where c.idcompra = p_idcompra;
end;

/
--------------------------------------------------------
--  DDL for Procedure STOCKVENTAS_ACTUALIZAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."STOCKVENTAS_ACTUALIZAR" (
codigo in varchar2,
nombre in varchar2,
cantidad in number,
precio in number,
stockVenta OUT SYS_REFCURSOR
)
as
begin

update stockventaproducto set codigoproducto= codigo, nombreproducto = nombre, cantidadproducto = cantidad, precioproducto = precio where codigo = codigoproducto; 


open stockventa for
select idusuario, codigoproducto, nombreproducto, cantidadproducto, precioproducto
from stockventaproducto
where codigoproducto = codigo;

end;

/
--------------------------------------------------------
--  DDL for Procedure STOCKVENTAS_BUSCAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."STOCKVENTAS_BUSCAR" (
codigo in varchar2,
stockVenta OUT SYS_REFCURSOR
)
as
begin

    open stockventa for
    select idUsuario, codigoproducto, nombreproducto, cantidadproducto, precioproducto
    from stockventaproducto
    where codigoproducto = codigo;

end;

/
--------------------------------------------------------
--  DDL for Procedure STOCKVENTAS_ELIMINAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."STOCKVENTAS_ELIMINAR" (
codigo IN varchar2
)
as
begin
delete from stockventaproducto where codigoproducto = codigo;
end;

/
--------------------------------------------------------
--  DDL for Procedure STOCKVENTAS_INSERTAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."STOCKVENTAS_INSERTAR" (
p_idvendedor in number,
p_nombre in varchar2, 
p_codigo in varchar2, 
p_precio in number,
p_cantidad in number, 
stockVenta OUT SYS_REFCURSOR)
as
begin
    INSERT INTO stockventaproducto values(p_idvendedor, p_codigo, p_nombre, p_cantidad, p_precio);


    open stockVenta for
    SELECT idusuario, codigoproducto, nombreproducto, cantidadproducto, precioproducto
    from stockventaproducto
    where codigoproducto = p_codigo;
end;

/
--------------------------------------------------------
--  DDL for Procedure STOCKVENTAS_LISTAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."STOCKVENTAS_LISTAR" (
stockVentas OUT SYS_REFCURSOR
)
as
begin

    open stockVentas for
    select idusuario, codigoproducto, nombreproducto, cantidadproducto, precioproducto
    from stockventaproducto
    where cantidadproducto > 0;
end;

/
--------------------------------------------------------
--  DDL for Procedure STOCKVENTAS_LISTAR_VENDEDOR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."STOCKVENTAS_LISTAR_VENDEDOR" (
idvendedor in number,
stockVentas OUT SYS_REFCURSOR
)
as
begin
    open stockVentas for
    select idusuario, codigoproducto, nombreproducto, cantidadproducto, precioproducto
    from stockventaproducto
    where idusuario = idvendedor and cantidadproducto > 0;
end;

/
--------------------------------------------------------
--  DDL for Procedure USUARIO_BUSCAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."USUARIO_BUSCAR" (p_mail IN VARCHAR2, usuario OUT SYS_REFCURSOR)
as
begin
    OPEN usuario FOR
    SELECT idUsuario, mail, nombre, rol, contraseña FROM usuario
    WHERE mail = p_mail;
end usuario_buscar;

/
--------------------------------------------------------
--  DDL for Procedure USUARIO_BUSCAR_ID
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."USUARIO_BUSCAR_ID" (
p_idusuario in number,
p_usuario OUT SYS_REFCURSOR
)
as
begin
    open p_usuario for
    select idusuario, mail, nombre, rol, contraseña
    from usuario
    where idusuario = p_idusuario;
end;

/
--------------------------------------------------------
--  DDL for Procedure USUARIO_INSERTAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."USUARIO_INSERTAR" (
    p_mail IN VARCHAR2,
    p_name IN VARCHAR2,
    p_rol IN VARCHAR2,
    p_password IN VARCHAR2,
    usuario OUT SYS_REFCURSOR
)
AS
BEGIN
    INSERT INTO usuario(mail, nombre, rol, contraseña)
    VALUES (p_mail, p_name, p_rol, p_password);
    
    open usuario for
    select idUsuario, mail, nombre, rol, contraseña
    from usuario
    where mail = p_mail;
    COMMIT;
END usuario_insertar;

/
--------------------------------------------------------
--  DDL for Procedure USUARIO_LISTAR
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."USUARIO_LISTAR" (usuario out SYS_REFCURSOR)
IS
BEGIN   
    OPEN usuario FOR SELECT idUsuario, mail, nombre, rol, contraseña FROM usuario;
END usuario_listar;

/
--------------------------------------------------------
--  DDL for Package MD_META
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE "SYSTEM"."MD_META" 
AS
FUNCTION get_next_id RETURN NUMBER;
-- Following code taken directly from wwv_flow_random from APEX
--
-- seed random function
procedure srand( new_seed in number );

function rand return number;
pragma restrict_references( rand, WNDS  );

procedure get_rand( r OUT number );

function rand_max( n IN number ) return number;
pragma restrict_references( rand_max, WNDS);

procedure get_rand_max( r OUT number, n IN number );

function quote(catalog IN VARCHAR2, schema IN VARCHAR2, object IN VARCHAR2, connid LONG) RETURN VARCHAR2;
END;

/
--------------------------------------------------------
--  DDL for Package Body MD_META
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE PACKAGE BODY "SYSTEM"."MD_META" AS

    multiplier constant number  := 22695477;
    increment  constant number  := 1;
    "2^32"     constant number  := 2 ** 32;
    "2^16"     constant number  := 2 ** 16;
    "0x7fff"   constant number  := 32767;
    Seed       number := 1;
    g_curr_val NUMBER DEFAULT NULL;
/*
 * Get the next available id for objectids.
 * @return the next id that can be used in objectid fields
 * This code is taken from wwv_flows
 */
FUNCTION get_next_id RETURN NUMBER
IS
BEGIN
/*
	select  to_number(
                 to_char(dbobjectid_sequence.nextval) ||
                      lpad( substr( abs(rand), 1, 5 ),5, '0' ) ||
                   ltrim(to_char(mod(abs(hsecs),1000000),'000000')))
    into    g_curr_val
    from   sys.v_$timer;

	select to_number(
				to_char(dbobjectid_sequence.nextval) ||
					lpad( substr( abs(rand), 1, 5 ), 5, '0') ||
				ltrim(to_char(mod(dbms_random.value(100000000000, 999999999999),1000000),'000000')))
    into    g_curr_val
	from dual;				
*/
	select dbobjectid_sequence.nextval
    into    g_curr_val
	from dual;	
    return g_curr_val;
END get_next_id;
-- Following code taken from wwv_flows_random 
 procedure srand( new_seed in number ) is
 begin
  Seed := new_seed;
 end srand;
--
  function rand return number is
    s number;
  begin
    seed := mod( multiplier * seed + increment, "2^32" );
    begin
       return bitand( seed/"2^16", "0x7fff" );
    --mhichwa
    exception when others then
       select dbobjectid_sequence.nextval into s from dual;
       return s||to_char(sysdate,'HH24MISS');
    end;
  end rand;
--
  procedure get_rand( r OUT number ) is
  begin
    r := rand;
  end get_rand;
--
  function rand_max( n IN number ) return number is
  begin
    return mod( rand, n ) + 1;
  end rand_max;
--
  procedure get_rand_max( r OUT number, n IN number )  is
  begin
    r := rand_max( n );
  end get_rand_max;

 FUNCTION quote(catalog IN VARCHAR2, schema IN VARCHAR2, object IN VARCHAR2, connid LONG ) RETURN VARCHAR2
  AS
  v_plugin VARCHAR2(1000);
  v_result VARCHAR2(4000) :='';
  v_ldelim VARCHAR2(1);
  v_rdelim VARCHAR2(1);
  v_isCatalogRequired BOOLEAN;
  v_isSchemaRequired BOOLEAN;
  v_maxCharsToDelim INT;
  BEGIN
  -- get database type using connid
   SELECT lower(VALUE) 
   INTO v_plugin
   FROM MD_ADDITIONAL_PROPERTIES
   WHERE PROP_KEY = 'PLUGIN_ID'
   AND connection_id_fk = connid;

    -- get the delimeter
    IF      v_plugin like '%sybase12%'   THEN
            v_ldelim := '[';
            v_rdelim := ']';     
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 28;
    ELSIF   v_plugin like '%sybase%'   THEN
            v_ldelim := '[';
            v_rdelim := ']';     
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;    
            v_maxCharsToDelim := 300;
    ELSIF   v_plugin like '%sqlserver%' THEN 
            v_ldelim := '[';
            v_rdelim := ']';    
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF  v_plugin like '%msaccess%'  THEN
            v_ldelim := '[';
            v_rdelim := ']'; 
            v_isCatalogRequired := false;
            v_isSchemaRequired :=false;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%mysql%'    THEN
            v_ldelim :='`'; 
            v_rdelim :='`';
            v_isCatalogRequired :=false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%db2%'        THEN
            v_ldelim :='"';
            v_rdelim :='"';
            v_isCatalogRequired := false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSIF v_plugin like '%teradata%'   THEN
            v_ldelim :='"';
            v_rdelim :='"';
            v_isCatalogRequired :=false;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    ELSE
            v_ldelim :='[';
            v_rdelim :=']';
            v_isCatalogRequired := true;
            v_isSchemaRequired := true;
            v_maxCharsToDelim := 300;
    END IF;

    IF LENGTH(catalog) > v_maxCharsToDelim THEN
      v_result := v_result || catalog ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result || v_ldelim || catalog ||v_rdelim;
    END IF ;

    IF LENGTH(schema) > v_maxCharsToDelim THEN
      v_result := v_result || '.' || schema ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result ||'.' || v_ldelim || schema || v_rdelim;
    END IF ;

    IF LENGTH(object) > v_maxCharsToDelim THEN
      v_result := v_result ||'.' || object ;-- do not quote as it is using the max amount of chars allowed 
    ELSE  
      v_result := v_result ||'.' || v_ldelim || object ||v_rdelim;
    END IF;      


   return v_result; 
END quote;  

--
-- One time initialisation
begin
  select to_char(sysdate,'JSSSSS')
    into seed
    from dual;
end;

/
--------------------------------------------------------
--  DDL for Function LOGMNR$COL_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$COL_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
237 185
nkvJV1w6wH1y7mRApzf9mGuebNUwgxDILkhGfHQCmP8+Vi4fyqh3SG1Fyq+pCts1OlgnK761
YuzKBA4JE5DNwZzBIF/Y4ZM5eUlquVyTkOg+AodK3vQJt9NLvPITXbP42O37gO+zKr4BQEJk
ypwrP1U/Pf6MLZONN8LUaVqHCN87T14HqHs5taX7LhLXQ2lCVBE1Ll8dyB9CDOlbyvQS/lrb
+0n1pQi9IJAWySL85ChAqnTaqFJm0YeToD4lZ8UUPQqIZNoX0x73WK9OzsmdBrvEC97iduxe
PEXVkxF6xklPod6yOGBvW7DAFMBgf+LajDLVKOAwB2EAiKCXYMuTUTtMYYkCFFf4sj1rCpsj
TLth6TSru530aM2HP6bEbm3m

/
--------------------------------------------------------
--  DDL for Function LOGMNR$GSBA_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$GSBA_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
206 171
6gxi/CQwK1I5Rfwuw/SXrOGpVRYwgwLI1yfbfHRGEjNe54OE4QwRZCoA20oG536tzgcBrj+1
xE3tE8jIhAoTlUdUmkdYMmZycO1SdiJZwwt/6BrM1wHXl/E5+3Ip2NXzC9j8v4+KjkD9d5AT
p05eEsEWjU1CBTMSpjZZrXzbgFl9QNnQ+zJGjSug21f76ajs78m6anxz7vFcTcem6XpAgKjc
EXzd/ijP8qiOqwblTfnXcRslJn3MljD02u+5fh9NBctOmnaw/tOjRCFPUhY8I9gCoMptjG7U
rHEIFzHOFyxBEdulRGq4ngSgcm7l2yOdSHgNM8rO2vUH4gozvJoLE1S8GBBzG/wrvHPhACQ/
2w==

/
--------------------------------------------------------
--  DDL for Function LOGMNR$KEY_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$KEY_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
2a0 1a1
3O4I5hDO715d8A2tqbxMCflFW0owg/D319xqfC9Grfg+K6yE71zMvtNS45AyRXBk77WpI5v4
nUSfE2lbvUYgk3JHySIe28XxC3xIYYpPGQjxwa3GzPw0FN5aN6kerQQTHUBp29Dd+vLSgBaC
2pAFrq059ZvN0ZPN11XG/2RuDY7HaTQu/QffhnY8rVlNxpFmbkVidwtZQahx5qIFu9Uww/tv
o1AvhjaORi898/KiPtOqv7LpsPFbyNuMnZEG48cxtZuesMBJFP/bKtgU2DN69xiT8Pxf+N2n
g0D2ximYzZqwY/4dBQj9dyQDuXRFo40hdqtWw0L96zV6723aQ8Xp0cqBaZj2wWTI4+6Ikry9
zY0Mdm3bV8TYqsOa+zT4fnikGO0eYbTFHEiW9QUbl/UwzuERwk8p

/
--------------------------------------------------------
--  DDL for Function LOGMNR$SEQ_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$SEQ_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
249 181
++dDv/cHZatK7/vHG9lvR8DQCpYwg/D3AEhqfHQC2h6ONoOvOeHvTNX1S5GDyajM4j8vkSVz
IMw+LbYS3goujprvmrB/LUpdBF8TVvjEqZpC7MCKPXWcGnTeL7ja8C2tcOdjOpRXkwL5NmPJ
B0KqMvwepdiQDY7HUDQrBddQC1lBqHGEogWkwRJ3+2+jUC+Gpo5GTazIWS0V551NkSl3+h0W
BhkPglLbvQDPzxWTnmu4ZuJIlTiNwTf1R0WxghyyKFjES9CJsCrGT8Fn7prlF4Mr5kx1YBGf
5xaODtRnmVJgb65RlKbAN9+Xxf2QnQjKQL99RZAgsEwGVKNfx9lFKwHLGUwzjOxmIAXXYd/Z
+L9osPQJjZYkNrD0pQ==

/
--------------------------------------------------------
--  DDL for Function LOGMNR$TAB_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$TAB_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
22e 181
PRVt0FiLRPgjIhZlCZcQhnOHXQ4wgzJp2UhGfHSKrQ843hKm3gKD9swoFAS4jVcW0CsSl7W1
6banVWdjktOVM18XyRjY4ZM5eRdquSp0ZdfHl3KJPBYqPi9LXIwum30Qh7ymgO+zTKj+R1N2
nSs/TPnknfYLwcUdAfBryDQGEIMisMuE9XT5ix3sudhHa5tLJRjsBIDKlqL7zk2CH0C1NRAZ
XrP7WgavVdNS3Yikz88VupZG21hTuAGspJBgCagmNWIwi9pgCIWP3rxF4p+uMps/ABEg+MBP
6Iykm62kO6hWhVHJXkfKF/jrQFjYBTTzatr1VTcOXt/AFuagDR7isNtb//lnXh8TXyAFWyCT
ubv6GXL0aM0PP/t+DfSl

/
--------------------------------------------------------
--  DDL for Function LOGMNR$USER_GG_TABF_PUBLIC
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE FUNCTION "SYSTEM"."LOGMNR$USER_GG_TABF_PUBLIC" wrapped
a000000
1
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
abcd
8
272 191
Vc+i+Mga8m7/BSlvXl0J+GmParYwg/D319wCfC8CTE6Ot30G8QRR0WzR8ohw8Z/y6DuL4pL5
IDjZApnCaZgeKa1OTjLj2B2tOYZg2ZuOAPKrxo7DeBqtn0Ahw0tubS36jP4xc+d2eQebdJMD
c/U0JxdiAl0qIPzsltBjeoGAEsxUk0aubCMJmysgc2d8ojil6ixQ37D7RA0HWMkh27QdOuXF
vSwuufDunMMT8Hue9dvy4vRXj+PhuyylJSukStsxyIb234EahCXyrjDlnzbC91eoU7v5sb4D
OvtDmggQCEViyhFXwspP9P0dOObin8JENsDJeFZYr/oVAgSHa97LRKvNZgd+f//XHlpEAOP4
rNm5mF0wTCABbb7tc5c7uo09M+79i7en8g==

/
--------------------------------------------------------
--  DDL for Synonymn CATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."CATALOG" FOR "SYS"."CATALOG";
--------------------------------------------------------
--  DDL for Synonymn COL
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."COL" FOR "SYS"."COL";
--------------------------------------------------------
--  DDL for Synonymn PRODUCT_USER_PROFILE
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."PRODUCT_USER_PROFILE" FOR "SYSTEM"."SQLPLUS_PRODUCT_PROFILE";
--------------------------------------------------------
--  DDL for Synonymn PUBLICSYN
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."PUBLICSYN" FOR "SYS"."PUBLICSYN";
--------------------------------------------------------
--  DDL for Synonymn SYSCATALOG
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."SYSCATALOG" FOR "SYS"."SYSCATALOG";
--------------------------------------------------------
--  DDL for Synonymn SYSFILES
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."SYSFILES" FOR "SYS"."SYSFILES";
--------------------------------------------------------
--  DDL for Synonymn TAB
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."TAB" FOR "SYS"."TAB";
--------------------------------------------------------
--  DDL for Synonymn TABQUOTAS
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE SYNONYM "SYSTEM"."TABQUOTAS" FOR "SYS"."TABQUOTAS";
--------------------------------------------------------
--  Constraints for Table COMPRA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COMPRA" MODIFY ("IDCOMPRA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPRA" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPRA" MODIFY ("CODIGOPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPRA" MODIFY ("FECHACOMPRA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."COMPRA" ADD PRIMARY KEY ("IDCOMPRA")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table USUARIO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."USUARIO" MODIFY ("IDUSUARIO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USUARIO" MODIFY ("MAIL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USUARIO" MODIFY ("NOMBRE" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USUARIO" MODIFY ("ROL" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USUARIO" MODIFY ("CONTRASEÑA" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."USUARIO" ADD PRIMARY KEY ("IDUSUARIO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table STOCKVENTAPRODUCTO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."STOCKVENTAPRODUCTO" MODIFY ("CODIGOPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCKVENTAPRODUCTO" MODIFY ("NOMBREPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCKVENTAPRODUCTO" MODIFY ("CANTIDADPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCKVENTAPRODUCTO" MODIFY ("PRECIOPRODUCTO" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."STOCKVENTAPRODUCTO" ADD UNIQUE ("CODIGOPRODUCTO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table COMPRA
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."COMPRA" ADD FOREIGN KEY ("IDUSUARIO")
	  REFERENCES "SYSTEM"."USUARIO" ("IDUSUARIO") ENABLE;
  ALTER TABLE "SYSTEM"."COMPRA" ADD FOREIGN KEY ("CODIGOPRODUCTO")
	  REFERENCES "SYSTEM"."STOCKVENTAPRODUCTO" ("CODIGOPRODUCTO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table STOCKVENTAPRODUCTO
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."STOCKVENTAPRODUCTO" ADD FOREIGN KEY ("IDUSUARIO")
	  REFERENCES "SYSTEM"."USUARIO" ("IDUSUARIO") ENABLE;
