const express = require('express');
const bodyParser = require('body-parser');
const app = express();

// Import Routes
const todosRoutes = require('./routes/todos');
const logsRoutes = require('./routes/logs');

// Set EJS sebagai view engine
app.set('view engine', 'ejs');

// Middleware
app.use(bodyParser.urlencoded({ extended: true }));

// --- ROUTING  ---
// 1. Route To-Dos
app.use('/', todosRoutes);
// 2. Route Logs 
app.use('/logs', logsRoutes);

// Jalankan Server
const PORT = process.env.APP_PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server running at http://localhost:${PORT}`);
});