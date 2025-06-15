function formatDuration(epochSeconds) {
  var date = new Date(epochSeconds * 1000);

  var dayNames = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"];
  var dayName = dayNames[date.getDay()];

  var dayNumber = date.getDate();

  var hours = date.getHours().toString().padStart(2, "0");
  var minutes = date.getMinutes().toString().padStart(2, "0");
  var seconds = date.getSeconds().toString().padStart(2, "0");

  return (
    dayName + ", " + dayNumber + " · " + hours + ":" + minutes + ":" + seconds
  );
}

function formatTimeOnly(totalSeconds) {
  var hours = Math.floor(totalSeconds / 3600);
  var minutes = Math.floor((totalSeconds % 3600) / 60);
  var seconds = totalSeconds % 60;
  
  return hours.toString().padStart(2, "0") + ":" + 
         minutes.toString().padStart(2, "0") + ":" + 
         seconds.toString().padStart(2, "0");
}
