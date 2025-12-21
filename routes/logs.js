const express = require("express");
const router = express.Router();
const db = require("../config/database");

// ROUTE: GET /logs
// 1. Ambil data dari tabel 'logs'
// 2. Render file view (misal: logs.ejs) dengan data tersebut

router.get("/", async (req, res) => {
  // --- TULIS KODINGAN KALIAN DI SINI ---

  // Hint:
  // try {
  //    const [logs] = await db.query('...');
  //    res.render('logs', { logs: logs });
  // } catch ...

  res.send("Halaman Logs belum diimplementasikan. (Tugas Kalian!)"); // Hapus baris ini jika sudah selesai
});

module.exports = router;
