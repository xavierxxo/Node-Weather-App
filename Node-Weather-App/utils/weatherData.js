const request = require("request");

const openWeatherMap = {
  BASE_URL: "https://api.openweathermap.org/data/2.5/weather?q=",
  SECRET_KEY: "32dae946567f53b013e565d130b65664",
};

const weatherData = (address, callback) => {
  const url =
    openWeatherMap.BASE_URL +
    encodeURIComponent(address) +
    "&units=metric&APPID=" +
    openWeatherMap.SECRET_KEY;
  console.log(url);
  request({ url, json: true }, (error, { body } = {}) => {
    if (error) {
      callback(true, "Unable to fetch data, Please try again. " + error);
    } else if (body.cod !== 200) {
      callback(true, "Location not found or invalid API key.");
    } else {
      callback(false, body);
    }
  });
};


module.exports = weatherData;