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