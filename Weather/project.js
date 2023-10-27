const options = {
  method: "GET",
  headers: {
    "X-RapidAPI-Key": "eabc82a34fmsh284803d95debb06p1604ffjsnc70892dd284b",
    "X-RapidAPI-Host": "weather-by-api-ninjas.p.rapidapi.com",
  },
};
const getwearher = (city) => {
  cityName.innerHTML = city;
  fetch(
    "https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=" + city,
    options
  )
    .then((response) => response.json())
    .then((response) => {
      console.log(response);
      cloud_pct.innerHTML = response.cloud_pct;
      temp.innerHTML = response.temp;
      feels_like.innerHTML = response.feels_like;
      humidity.innerHTML = response.humidity;
      min_temp.innerHTML = response.min_temp;
      max_temp.innerHTML = response.max_temp;
      wind_speed.innerHTML = response.wind_speed;
      sunrise.innerHTML = response.sunrise;
      sunset.innerHTML = response.sunset;
    })
    .catch((err) => console.error(err));
};

submit.addEventListener("click", (e) => {
  e.preventDefault();
  getwearher(city.value);
});
getwearher("Delhi");
fetch(
  "https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Gujarat",
  options
)
  .then((response) => response.json())
  .then((response) => {
    console.log(response);
    cloud.innerHTML = response.cloud_pct;
    tempp.innerHTML = response.temp;
    feels.innerHTML = response.feels_like;
    humi.innerHTML = response.humidity;
    mintemp.innerHTML = response.min_temp;
    maxtemp.innerHTML = response.max_temp;
    windspeed.innerHTML = response.wind_speed;
    sun_rise.innerHTML = response.sunrise;
    sun_set.innerHTML = response.sunset;
  })
  .catch((err) => console.error(err));
fetch(
  "https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Maharashtra",
  options
)
  .then((response) => response.json())
  .then((response) => {
    console.log(response);
    clou.innerHTML = response.cloud_pct;
    tem.innerHTML = response.temp;
    feel.innerHTML = response.feels_like;
    hum.innerHTML = response.humidity;
    mintem.innerHTML = response.min_temp;
    maxtem.innerHTML = response.max_temp;
    windspe.innerHTML = response.wind_speed;
    sun_ris.innerHTML = response.sunrise;
    sun_se.innerHTML = response.sunset;
  })
  .catch((err) => console.error(err));
fetch(
  "https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Telangana",
  options
)
  .then((response) => response.json())
  .then((response) => {
    console.log(response);
    pcloud.innerHTML = response.cloud_pct;
    ptempp.innerHTML = response.temp;
    pfeels.innerHTML = response.feels_like;
    phumi.innerHTML = response.humidity;
    pmintemp.innerHTML = response.min_temp;
    pmaxtemp.innerHTML = response.max_temp;
    pwindspeed.innerHTML = response.wind_speed;
    psun_rise.innerHTML = response.sunrise;
    psun_set.innerHTML = response.sunset;
  })
  .catch((err) => console.error(err));
fetch(
  "https://weather-by-api-ninjas.p.rapidapi.com/v1/weather?city=Rajasthan",
  options
)
  .then((response) => response.json())
  .then((response) => {
    console.log(response);
    acloud.innerHTML = response.cloud_pct;
    atempp.innerHTML = response.temp;
    afeels.innerHTML = response.feels_like;
    ahumi.innerHTML = response.humidity;
    amintemp.innerHTML = response.min_temp;
    amaxtemp.innerHTML = response.max_temp;
    awindspeed.innerHTML = response.wind_speed;
    asun_rise.innerHTML = response.sunrise;
    asun_set.innerHTML = response.sunset;
  })
  .catch((err) => console.error(err));
