
-- Create books table
CREATE TABLE books(
	book_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    publish_year YEAR 
    );
    
-- Create authors table
CREATE TABLE authors (
	autor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    birth_year YEAR
);

-- Create customers table
CREATE TABLE customers (
	customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Create loans table
CREATE TABLE loans (
	loan_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    book_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);

-- Create book_authors join table
CREATE TABLE book_authors(
	book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id),
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
