# E-Commerce Operations & Customer Analytics Database

## Project Overview
This project is a fully functional relational database built from scratch using **MySQL Workbench**. It simulates the backend operations of an online retail store, designed to track customer behaviors, manage product inventory, monitor suppliers, and process orders. The project demonstrates core database management skills, ranging from structural design to advanced analytical querying and performance tuning.

---

## Database Schema & Architecture
The database consists of **5 interconnected tables** with enforced Primary Keys, Foreign Keys, and CHECK constraints to maintain data integrity:

1. **`customers`**: Stores buyer profiles, contact emails, and registration locations.
2. **`suppliers`**: Tracks external product vendors and their contact details.
3. **`products`**: Manages inventory stock levels, pricing, product categories, and supplier mapping.
4. **`orders`**: Records transaction timestamps and fulfillment statuses.
5. **`order_items`**: A junction table resolving the many-to-many relationship between orders and products, capturing exact quantities and historical unit prices.

---

## Project File Structure
- `schema.sql`: Contains the Data Definition Language (DDL) scripts for database creation, table definitions, and relational constraints.
- `seed_data.sql`: Contains the Data Manipulation Language (DML) scripts used to populate the tables with realistic sample records.
- `queries.sql`: Contains intermediate-to-advanced Business Intelligence (BI) queries and analytical insights.
- `optimization.sql`: Demonstrates query performance analysis using `EXPLAIN` and custom indexing strategies.

---

## Key SQL Concepts & Techniques Demonstrated
- **Database Design:** Normalization, Primary/Foreign Key relationships, and cascading rules (`ON DELETE CASCADE`, `ON DELETE SET NULL`).
- **Data Manipulation & Retrieval:** Multi-table `INNER JOIN` operations, aggregate functions (`SUM`, `COUNT`), `GROUP BY`, and conditional filtering.
- **Advanced Analytics:** Implemented **Window Functions** (`RANK() OVER (PARTITION BY ...)`) to analyze product pricing distributions across specific categories.
- **Performance Tuning:** Evaluated query execution plans using `EXPLAIN` and created targeted indexes (`CREATE INDEX`) to eliminate full table scans on high-frequency columns.

---

## Example Business Insights (From `queries.sql`)
- **Customer Lifetime Value:** Aggregated total spend per customer to identify top-tier buyers.
- **Inventory Health:** Filtered stock quantities to flag items falling below specific inventory thresholds.
- **Category Performance:** Computed total revenue generated per product category to highlight top-performing departments.

  Author
  Tiisetso Matabane
