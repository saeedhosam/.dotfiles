function fetchNextPrayer(callback) {
  var xhr = new XMLHttpRequest();
  xhr.open(
    "GET",
    "https://api.aladhan.com/v1/timingsByCity?city=Cairo&country=Egypt&method=5",
  );
  xhr.onreadystatechange = function () {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
      var json = JSON.parse(xhr.responseText);
      var timings = json.data.timings;
      var now = new Date();

      var prayerOrder = ["Fajr", "Dhuhr", "Asr", "Maghrib", "Isha"];
      for (var i = 0; i < prayerOrder.length; i++) {
        var prayer = prayerOrder[i];
        var time = timings[prayer];
        var [hour, minute] = time.split(":").map(Number);

        var prayerTime = new Date(now);
        prayerTime.setHours(hour, minute, 0, 0);

        if (prayerTime > now) {
          callback({
            lhs: prayer + " (" + time + "):",
            name: prayer,
            time: time,
            timestamp: Math.floor(prayerTime.getTime() / 1000),
          });

          return;
        }
      }
    }
  };
  xhr.send();
}
