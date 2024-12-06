const mysql = require('mysql');

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'weather_app'
});

connection.connect((err) => {
  if (err) {
    console.error('Koneksi ke database gagal:', err);
    return;
  }
  console.log('Berhasil terhubung ke database.');
});

// Mengambil rekomendasi kegiatan dari tabel 'rekomendasi_kegiatan'
const getRekomendasiKegiatan = (callback) => {
  const query = 'SELECT rekomendasi FROM rekomendasi_kegiatan';  // Query yang benar sesuai nama tabel
  connection.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching data from database:', err);
      return callback('Failed to fetch recommendations');
    }
    callback(null, results);
  });
};

module.exports = { getRekomendasiKegiatan };
