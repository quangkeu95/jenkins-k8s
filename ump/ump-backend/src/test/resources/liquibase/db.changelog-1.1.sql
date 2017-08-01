--liquibase formatted sql
--changeset thanhlx:1.1
create table subscribers (
  id bigint GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1) PRIMARY KEY,
  subscriber_id longvarchar,
  subscriber_data_template_ids longvarchar,
  subscriber_data longvarchar,
  created bigint,
  updated bigint
);
create table subscriber_devices(
  id bigint GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1) PRIMARY KEY,
  subscriber_id longvarchar ,
  device_id longvarchar,
  manufacturer longvarchar,
  oui longvarchar,
  product_class longvarchar,
  serial_number longvarchar,
  created bigint,
  updated bigint
);
create table subscriber_templates (
  id bigint GENERATED BY DEFAULT AS IDENTITY(START WITH 1, INCREMENT BY 1) PRIMARY KEY,
  name longvarchar ,
  template_keys longvarchar,
  created bigint,
  updated bigint
);