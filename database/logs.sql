-- Database: praktikum_tekser
USE praktikum_tekser;

-- membuat tabel logs untuk menyimpan aktivitas log
CREATE TABLE IF NOT EXISTS logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    activity VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Menambahkan data awal ke tabel logs
INSERT INTO logs (activity) VALUES ('System initialized - Logs table created');