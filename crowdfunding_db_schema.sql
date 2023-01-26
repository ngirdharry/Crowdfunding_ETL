-- Project 2: CrowdFunding Database Schema 

--create new campaign table
CREATE TABLE "campaign" (
    "cf_id" INTEGER   NOT NULL,
    "contact_id" INTEGER   NOT NULL,
    "company_name" VARCHAR(100)   NOT NULL,
    "description" VARCHAR   NOT NULL,
    "goal" numeric(10,2)  NOT NULL,
    "pledged" numeric(10,2)   NOT NULL,
    "outcome" VARCHAR (50)   NOT NULL,
    "backers_count" INTEGER   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launched_date" DATE   NOT NULL,
    "end_date" DATE   NOT NULL,
    "category_id" VARCHAR(10)   NOT NULL,
    "subcategory_id" VARCHAR(10)   NOT NULL,
    CONSTRAINT "pk_campaign" PRIMARY KEY (
        "cf_id"
     )
);

-- view campaign table
SELECT * from campaign; 

-- insert data and view table  

SELECT * from campaign;

-- create new category table 

CREATE TABLE "category" (
    "category_id" VARCHAR(10)   NOT NULL,
    "category" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY (
        "category_id"
     )
);

-- view category table  
SELECT * from category; 

-- insert data and view table  
SELECT * from category; 


-- create new subcategory table 

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(10)   NOT NULL,
    "subcategory_name" VARCHAR(50)   NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY (
        "subcategory_id"
     )
);

-- view subcategory table
SELECT * from subcategory; 

-- insert data and view table 
SELECT * from subcategory;

-- create new contacts table 
CREATE TABLE "contacts" (
	"contact_id" INTEGER	NOT NULL, 
	"first_name" VARCHAR	NOT NULL,
	"last_name"	VARCHAR	   NOT NULL, 
	"email" VARCHAR		NOT NULL,
	CONSTRAINT "pk_contacts" PRIMARY KEY (
		"contact_id"
     )
);

-- view contacts table

SELECT * from contacts;

-- insert data and view contacts table 

SELECT * from contacts;

-- Alter tables to add foreign keys 

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_contact_id" FOREIGN KEY("contact_id")
REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_category_id" FOREIGN KEY("category_id")
REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD CONSTRAINT "fk_campaign_subcategory_id" FOREIGN KEY("subcategory_id")
REFERENCES "subcategory" ("subcategory_id");

-- End of Table Schema 