const express = require("express");
const hbs = require("hbs");
const path = require("path");
const { getRekomendasiKegiatan } = require("./db");  // Pastikan path relatif benar

const app = express();
const weatherData = require("../utils/weatherData");

const port = process.env.PORT || 3000;

const publicPath = path.join(__dirname, "../public");
const viewsPath = path.join(__dirname, "../templates/views");
const partialsPath = path.join(__dirname, "../templates/partials");

app.set("view engine", "hbs");
app.set("views", viewsPath);
hbs.registerPartials(partialsPath);
app.use(express.static(publicPath));

// Route utama untuk halaman index
app.get("", (req, res) => {
  getRekomendasiKegiatan((err, recommendations) => {
    if (err) {
      return res.render("index", {
        title: "Weather App",
        error: err
      });
    }
    res.render("index", {
      title: "Weather App",
      recommendations: recommendations,  // Mengirim rekomendasi kegiatan ke view
      location: '', // Nilai location yang sesuai dengan data cuaca
      weather: '',  // Nilai cuaca
      temperature: '', // Nilai suhu
      date: '' // Nilai tanggal
    });
  });
});

// Route untuk mendapatkan data cuaca
app.get("/weather", (req, res) => {
  if (!req.query.address) {
    return res.send("Address is required");
  }
  weatherData(req.query.address, (error, result) => {
    if (error) {
      return res.send(error);
    }
    res.send(result);
  });
});

// Route untuk halaman error 404
app.get("*", (req, res) => {
  res.render("404", { title: "Page not found" });
});

app.listen(port, () => {
  console.log("Server is listening on port " + port);
});

app.get("/getRecommendations", (req, res) => {
  getRekomendasiKegiatan((err, recommendations) => {
    if (err) {
      return res.status(500).json({ error: "Failed to fetch recommendations" });
    }
    res.json(recommendations);
  });
});