CREATE TABLE "customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(150),
  "last_name" VARCHAR(150),
  "email" VARCHAR(150)
);

CREATE TABLE "vehicle" (
  "vehicle_id" SERIAL PRIMARY KEY,
  "vehicle_make"  VARCHAR(100),
  "vehicle_model" VARCHAR(100),
  "vehicle_year" INT,
  "vehicle_color" VARCHAR(100),
  "vehicle_cost" FLOAT
);

CREATE TABLE "staff" (
  "staff_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "email" VARCHAR(100),
  "phone_number" VARCHAR(30)
);

CREATE TABLE "part" (
  "part_id" SERIAL PRIMARY KEY,
  "part_desc" VARCHAR(100),
  "part_cost" FLOAT,
  "in_stock" BOOLEAN
);

CREATE TABLE "sales_invoice" (
  "invoice_id" SERIAL PRIMARY KEY,
  "invoice_date" TIMESTAMP,
  "total_cost" FLOAT,
  "customer_id" INTEGER,
  "vehicle_id" INTEGER,
  "staff_id" INTEGER
);

CREATE TABLE "service_invoice" (
  "service_id" SERIAL PRIMARY KEY,
  "invoice_date" TIMESTAMP,
  "service_desc" VARCHAR(100),
  "service_total" FLOAT,
  "customer_id" INTEGER,
  "vehicle_id" INTEGER
);


ALTER TABLE "sales_invoice" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "sales_invoice" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicle" ("vehicle_id");

ALTER TABLE "sales_invoice" ADD FOREIGN KEY ("staff_id") REFERENCES "staff" ("staff_id");

ALTER TABLE "service_invoice" ADD FOREIGN KEY ("customer_id") REFERENCES "customer" ("customer_id");

ALTER TABLE "service_invoice" ADD FOREIGN KEY ("vehicle_id") REFERENCES "vehicle" ("vehicle_id");


