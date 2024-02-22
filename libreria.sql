/* En una librería Online, solo alquilamos libros. Cada libro pertenece a un autor. Los
clientes exploran nuestro catálogo de libros, seleccionan un libro y lo añaden a la
cesta de la compra. Al finalizar la compra su cesta se convierte en un pedido efectivo
que se envía al cliente. Los clientes pueden añadir libros a sus favoritos */

CREATE TABLE authors (
	id	INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

CREATE TABLE books (
	id INT AUTO_INCREMENT PRIMARY KEY,
	authors_id INT, 
    title VARCHAR(255),
    genere VARCHAR(50),
    FOREIGN KEY (authors_id) REFERENCES authors(id)
);

CREATE TABLE roles (
	id	INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL
);

CREATE TABLE users (
	id	INT AUTO_INCREMENT PRIMARY KEY,
    roles_id INT,
    user_name VARCHAR(50) NOT NULL,
    email VARCHAR(150) NOT NULL,
    pasword VARCHAR(250) NOT NULL,
    FOREIGN KEY (roles_id) REFERENCES roles(id)
);

CREATE TABLE loans (
	id	INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT,
    books_id INT,
	loan_date TIMESTAMP,
    due_date TIMESTAMP,
    return_date TIMESTAMP,
    FOREIGN KEY (users_id) REFERENCES users(id),
    FOREIGN KEY (books_id) REFERENCES books(id)
);

CREATE TABLE books_favourite (
	id	INT AUTO_INCREMENT PRIMARY KEY,
    users_id INT,
    books_id INT,
    FOREIGN KEY (users_id) REFERENCES users(id),
    FOREIGN KEY (books_id) REFERENCES books(id)
);
