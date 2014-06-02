--
-- Type: TABLE; Owner: DEAPP; Name: DE_SUBJECT_MICROARRAY_DATA
--
 CREATE TABLE "DEAPP"."DE_SUBJECT_MICROARRAY_DATA" 
  (	"TRIAL_NAME" VARCHAR2(50 BYTE), 
"PROBESET_ID" NUMBER(22,0), 
"ASSAY_ID" NUMBER(18,0), 
"PATIENT_ID" NUMBER(18,0), 
"SAMPLE_ID" NUMBER(18,0), 
"SUBJECT_ID" VARCHAR2(50 BYTE), 
"RAW_INTENSITY" NUMBER(18,4), 
"LOG_INTENSITY" NUMBER(18,4), 
"ZSCORE" NUMBER(18,4), 
"NEW_RAW" NUMBER(18,4), 
"NEW_LOG" NUMBER(18,4), 
"NEW_ZSCORE" NUMBER(18,4), 
"TRIAL_SOURCE" VARCHAR2(200 BYTE)
  )
 TABLESPACE "DEAPP";
--
-- Type: INDEX; Owner: DEAPP; Name: DE_MICROARRAY_DATA_IDX1
--
 CREATE INDEX "DEAPP"."DE_MICROARRAY_DATA_IDX1" ON "DEAPP"."DE_SUBJECT_MICROARRAY_DATA" ("TRIAL_NAME", "ASSAY_ID", "PROBESET_ID")
 TABLESPACE "INDX";
--
-- Type: INDEX; Owner: DEAPP; Name: DE_MICROARRAY_DATA_IDX2
--
 CREATE INDEX "DEAPP"."DE_MICROARRAY_DATA_IDX2" ON "DEAPP"."DE_SUBJECT_MICROARRAY_DATA" ("ASSAY_ID", "PROBESET_ID")
 TABLESPACE "INDX";
--
-- Type: INDEX; Owner: DEAPP; Name: DE_MICROARRAY_DATA_IDX3
--
 CREATE BITMAP INDEX "DEAPP"."DE_MICROARRAY_DATA_IDX3" ON "DEAPP"."DE_SUBJECT_MICROARRAY_DATA" ("ASSAY_ID")
 TABLESPACE "INDX";
--
-- Type: INDEX; Owner: DEAPP; Name: DE_MICROARRAY_DATA_IDX4
--
 CREATE BITMAP INDEX "DEAPP"."DE_MICROARRAY_DATA_IDX4" ON "DEAPP"."DE_SUBJECT_MICROARRAY_DATA" ("PROBESET_ID")
 TABLESPACE "INDX";
