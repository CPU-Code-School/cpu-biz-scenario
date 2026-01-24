# 🏠 residential-real-estate-tracker

A robust database system designed for a Lakewood-based real estate brokerage to manage residential listings across Ocean and Monmouth Counties.
As we expand from Lakewood into surrounding townships like Jackson, Toms River, and Manchester, this system replaces our legacy workflow with a modernized architecture that enforces strict business rules and tracks complex entity relationships.

## 📌 Spec

The full specification, including the history of our expansion and specific property types, is included in the repository in the file called spec.txt.

## 📦 Deliverables

The following three files are required to implement the requirements for this repository:
1. table.sql

Creates the database and properties table.
Implements strict constraints for pricing ($100k - $9.9M).
Handles multi-town logic and residential categories.

2. sampledata.sql

Inserts sample listings from Lakewood, Jackson, and other service areas.
Demonstrates "In Contract" vs. "Sold" states.

3. reports.sql

Provides insights such as: Total sales volume per realtor, average price per town, and current active listings.

### 📜 Business Rules

- Pricing: Minimum sale price of $100,000; maximum allowed value of $9,900,000.
- Price Integrity: Selling price must be greater than or equal to the asking price.
- Inventory Lifecycle: Houses are only entered when officially put on the market.
- Dual Measurements: Must record both House Square Footage and Plot Square Footage in separate columns.
- Entity Management: Must track the individual contact person for houses owned by corporate entities.
- Property Types: Restricted to: Bi-level, Colonial, Ranch, Split-level, Duplex, Townhouse, Vacant Land, or Apartment.

## 🛠️ SQL Requirements

- Primary Key: Unique identifier for every listing.
- Data Integrity: CHECK constraints for prices, square footage, and property types.
- Town Tracking: Mandatory town field to support the new regional expansion.
- Re-runnable Scripts:
- DROP DATABASE IF EXISTS / CREATE DATABASE
- DROP TABLE IF EXISTS