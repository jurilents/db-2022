CREATE TABLE "warehouses" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "address" varchar
);

CREATE TABLE "warehouse_blocks" (
  "id" SERIAL PRIMARY KEY,
  "warehouse_id" int,
  "capacity" float
);

CREATE TABLE "fuel_types" (
  "id" SERIAL PRIMARY KEY,
  "code" smallint,
  "name" varchar
);

CREATE TABLE "deliveries" (
  "id" SERIAL PRIMARY KEY,
  "warehouse_id" int,
  "fuel_type_id" int,
  "completed" boolean,
  "datetime" date
);

CREATE TABLE "managers" (
  "id" SERIAL PRIMARY KEY,
  "role_id" int,
  "warehouse_id" int,
  "firstname" varchar,
  "lastname" varchar,
  "email" varchar,
  "phone_number" varchar
);

CREATE TABLE "roles" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "permission_level" smallint
);

ALTER TABLE "warehouse_blocks" ADD FOREIGN KEY ("warehouse_id") REFERENCES "warehouses" ("id");

ALTER TABLE "managers" ADD FOREIGN KEY ("warehouse_id") REFERENCES "warehouses" ("id");

ALTER TABLE "managers" ADD FOREIGN KEY ("role_id") REFERENCES "roles" ("id");

ALTER TABLE "deliveries" ADD FOREIGN KEY ("warehouse_id") REFERENCES "warehouses" ("id");

ALTER TABLE "deliveries" ADD FOREIGN KEY ("fuel_type_id") REFERENCES "fuel_types" ("id");
