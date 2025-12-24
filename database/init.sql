-- Menghapus database dan user jika sudah ada sebelumnya
DROP DATABASE IF EXISTS praktikum_tekser;
DROP USER IF EXISTS 'tekser_user'@'localhost';

-- Membuat database baru dan tabel todos
CREATE DATABASE praktikum_tekser;
USE praktikum_tekser;

CREATE TABLE todos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    task VARCHAR(255) NOT NULL,
    completed BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Menambahkan data awal ke tabel todos
INSERT INTO todos (task, completed) VALUES 
('Setup MySQL Server', 1),
('Koneksi Node.js ke Database', 0),
('Implementasi Environment Variable', 0);

-- Membuat user baru dengan password
CREATE USER 'tekser_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password123';

-- Memberikan Hak Akses CRUD (Create, Read, Update, Delete)
GRANT SELECT, INSERT, UPDATE, DELETE ON praktikum_tekser.* TO 'tekser_user'@'localhost';

-- Refresh privileges agar user bisa langsung dipakai
FLUSH PRIVILEGES;
