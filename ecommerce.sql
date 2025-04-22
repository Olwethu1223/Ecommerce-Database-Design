CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- DROP statements for clean re-creation
DROP TABLE IF EXISTS product_image, product_item, product_variation, product_attribute,
    product, color, size_option, size_category, product_category, brand,
    attribute_category, attribute_type CASCADE;

-- Brand Table
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100) NOT NULL
);

-- Product Category Table
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

-- Product Table
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10, 2),
    description TEXT,
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- Color Table
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50),
    hex_code VARCHAR(7)
);

-- Size Category Table
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Size Option Table
CREATE TABLE size_option (
    size_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    size_value VARCHAR(10),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- Product Item Table
CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    stock_qty INT,
    SKU VARCHAR(50),
    price DECIMAL(10,2),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- Product Variation Table
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    size_id INT,
    color_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_id) REFERENCES size_option(size_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- Attribute Category Table
CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- Attribute Type Table
CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    attribute_category_id INT,
    type_name VARCHAR(100),
    data_type VARCHAR(50),
    FOREIGN KEY (attribute_category_id) REFERENCES attribute_category(attribute_category_id)
);

-- Product Attribute Table
CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_type_id INT,
    value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (attribute_type_id) REFERENCES attribute_type(attribute_type_id)
);

-- Product Image Table
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);
