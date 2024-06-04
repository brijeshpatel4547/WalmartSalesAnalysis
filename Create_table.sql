-- Table: public.walmart_sales

DROP TABLE IF EXISTS public.walmart_sales;

CREATE TABLE IF NOT EXISTS public.walmart_sales
(
    invoice_id character varying(30) COLLATE pg_catalog."default" NOT NULL,
    branch character varying(5) COLLATE pg_catalog."default" NOT NULL,
    city character varying(30) COLLATE pg_catalog."default" NOT NULL,
    customer_type character varying(30) COLLATE pg_catalog."default" NOT NULL,
    gender character varying(10) COLLATE pg_catalog."default" NOT NULL,
    product_line character varying(100) COLLATE pg_catalog."default" NOT NULL,
    unit_price double precision NOT NULL,
    quantity integer NOT NULL,
    "VAT" double precision NOT NULL,
    total double precision NOT NULL,
    date date NOT NULL,
    "time" time without time zone NOT NULL,
    payment_method character varying(15) COLLATE pg_catalog."default" NOT NULL,
    cost_of_goods_sold double precision NOT NULL,
    gross_margin_percentage double precision,
    gross_income double precision NOT NULL,
    rating double precision,
    CONSTRAINT "Walmart_Sales_pkey" PRIMARY KEY (invoice_id)
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.walmart_sales
    OWNER to postgres;