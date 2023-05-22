-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/FzdEpw
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- This is the Entity Relationship Diagram (ERD) text for the Crowdfunding Data

CREATE TABLE Contacts (
    contact_id INT NOT NULL,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    PRIMARY KEY (contact_id)
);

CREATE TABLE Category (
    category_id VARCHAR   NOT NULL,
    category VARCHAR   NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE Subcategory (
    subcategory_id VARCHAR   NOT NULL,
    subcategory VARCHAR   NOT NULL,
    PRIMARY KEY (subcategory_id)
);

CREATE TABLE Campaign (
    cf_id INT NOT NULL,
    contact_id INT NOT NULL,
    company_name VARCHAR NOT NULL,
    description VARCHAR NOT NULL,
    goal VARCHAR NOT NULL,
    pledged VARCHAR NOT NULL,
    outcome VARCHAR NOT NULL,
    backers_count INT NOT NULL,
    country VARCHAR NOT NULL,
    currency VARCHAR NOT NULL,
    launched_date VARCHAR NOT NULL,
    end_date VARCHAR NOT NULL,
    staff_pick VARCHAR NOT NULL,
    spotlight VARCHAR NOT NULL,
    category_id VARCHAR NOT NULL,
    subcategory_id VARCHAR NOT NULL,
    PRIMARY KEY (cf_id),
    FOREIGN KEY (contact_id) REFERENCES Contacts (contact_id),
    FOREIGN KEY (category_id) REFERENCES Category (category_id),
    FOREIGN KEY (subcategory_id) REFERENCES Subcategory (subcategory_id)
);