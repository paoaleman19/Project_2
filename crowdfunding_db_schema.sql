-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/hLM9Op
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Contains the category id as a primary key and the category
CREATE TABLE "category" (
    "category_id" varchar(4)   NOT NULL,
    "category" varchar(20)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

-- Contains sbcategory id as a primary key and the subcategory
CREATE TABLE "subcategory" (
    "subcat_id" varchar(8)   NOT NULL,
    "subcat" varchar(30)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcat_id"
     )
);

-- Contains the contact id as a primary key, the name (first and last) and the email of the contact
CREATE TABLE "contacts" (
    "contact_id" int   NOT NULL,
    "first_name" varchar(20)   NOT NULL,
    "last_name" varchar(20)   NOT NULL,
    "email" varchar(50)   NOT NULL,
    CONSTRAINT "pk_contacts" PRIMARY KEY (
        "contact_id"
     )
);

-- Contains the complete data for campaigns with contact id, category and subcategory id as foreign keys
CREATE TABLE "campaign" (
    "cf_id" int   NOT NULL,
    "cont_contact_id" int   NOT NULL,
    "company_name" varchar(50)   NOT NULL,
    "description" varchar(100)   NOT NULL,
    "goal" float   NOT NULL,
    "pledged" float   NOT NULL,
    "outcome" varchar(15)   NOT NULL,
    "backers_count" int   NOT NULL,
    "country" varchar(2)   NOT NULL,
    "currency" varchar(3)   NOT NULL,
    "launched_date" date   NOT NULL,
    "end_date" date   NOT NULL,
    "cat_category_id" varchar(4)   NOT NULL,
    "subcat_subcategory_id" varchar(8)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_cont_contact_id" FOREIGN KEY("cont_contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_cat_category_id" FOREIGN KEY("cat_category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcat_subcategory_id" FOREIGN KEY("subcat_subcategory_id")
REFERENCES "subcategory" ("subcat_id");

