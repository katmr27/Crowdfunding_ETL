CREATE TABLE "Contacts" (
    "contact_id" INT NOT NULL,
    "First_Name" TEXT NOT NULL,
    "Last_Name" TEXT NOT NULL,
    "Email" TEXT NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE "Category" (
    "category_id" Varchar NOT NULL,
    "category" TEXT NOT NULL,
    CONSTRAINT "pk_Category" PRIMARY KEY ("category_id")
);

CREATE TABLE "Subcategory" (
    "subcategory_id" Varchar NOT NULL,
    "sub-category" TEXT NOT NULL,
    CONSTRAINT "pk_Subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "Campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company_name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" TEXT NOT NULL,
    "backers_count" INT NOT NULL,
    "country" TEXT NOT NULL,
	"currency" TEXT NOT NULL,
    "launched_date" Timestamp NOT NULL,
    "end_date" Timestamp NOT NULL,
    "category_id" Varchar NOT NULL,
    "subcategory_id" Varchar NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_Campaign_contact_id" FOREIGN KEY("contact_id") REFERENCES "Contacts" ("contact_id"),
    CONSTRAINT "fk_Campaign_category_id" FOREIGN KEY("category_id") REFERENCES "Category" ("category_id"),
    CONSTRAINT "fk_Campaign_subcategory_id" FOREIGN KEY("subcategory_id") REFERENCES "Subcategory" ("subcategory_id")
);

-- Verify table creation with SELECT statements 
SELECT * FROM "Contacts" LIMIT 5;
SELECT * FROM "Category" LIMIT 5;
SELECT * FROM "Subcategory" LIMIT 5;
SELECT * FROM "Campaign" LIMIT 5;