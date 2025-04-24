# Ecommerce-Database-Design
Peer group project: E-commerce database design and implementation
# E-commerce Database Design Project

Welcome to our peer group project! This repository contains our collaborative work on designing and implementing an e-commerce database from scratch. The goal of this project is to practice database modeling and SQL implementation skills.

## 📌 Project Objective
To design a robust and scalable database for an e-commerce platform. This includes:
- Building an Entity-Relationship Diagram (ERD)
- Creating tables with relationships and constraints
- Structuring the data flow between entities
- Collaborating as a team throughout the process

---

## 🧱 Tables Created

| Table Name           | Purpose                                                                 |
|----------------------|-------------------------------------------------------------------------|
| `brand`              | Stores brand-related information                                        |
| `product_category`   | Categorizes products (e.g. clothing, electronics)                       |
| `product`            | Stores general product details                                          |
| `color`              | Lists available color options                                           |
| `size_category`      | Groups types of sizes (e.g. clothing sizes)                             |
| `size_option`        | Stores specific size values (e.g. S, M, L, 42)                          |
| `product_item`       | Represents purchasable product variations (size + color)                |
| `product_variation`  | Links a product to its color and size variations                        |
| `attribute_category` | Groups attributes into categories (e.g. technical, physical)            |
| `attribute_type`     | Defines types of attributes (e.g. weight, material)                     |
| `product_attribute`  | Stores product-specific attribute values                                |
| `product_image`      | Stores image URLs for each product                                      |

---

## 🔄 Data Flow & Relationships

- **Products** belong to a **brand** and a **category**
- Each **product** can have multiple **variations** (size & color)
- **Product items** are the actual stock units linked to **products**, **sizes**, and **colors**
- **Attributes** allow us to store extra product info like weight, material, etc.
- Images are connected to products for visual display

---

## 🛠️ Technologies Used

- **MySQL** for database schema and queries
- **dbdiagram.io** for ERD creation
- **GitHub** for collaboration and version control

---

## 📂 Files in This Repo

- `ecommerce.sql` – Full SQL script for database and table creation
- `ERD.png` – Image of the final Entity-Relationship Diagram
- `README.md` – This documentation file

---

## 🤝 Group Collaboration

Our team worked together on:
- Designing the database structure
- Creating the ERD and writing SQL queries
- Testing relationships and refining constraints

We communicated regularly, shared tasks, and made sure everyone understood each part of the project.

---

## ✅ How to Use

1. Open MySQL Workbench or your preferred MySQL tool
2. Run the script in `ecommerce.sql` (be sure to use `CREATE DATABASE` first)
3. Use the ERD to understand table relationships
4. Modify or add sample data as needed for testing

---

## 🚀 Status

- [x] ERD Completed
- [x] SQL Script Finalized
- [ ] Sample Data (optional)
- [ ] Additional Queries (optional)

---

