let display = document.getElementById("clock");
const audio = new Audio("audio");
audio.loop = true;
let alarmtime = null;
let alarmtimeout = null;






// step:2 display clock
function updatetime() {
    const date = new Date();
    const hours = formatTime(date.getHours());
    const minutes = formatTime(date.getMinutes());
    const seconds = formatTime(date.getSeconds());
    display.innerText = hours + ":" + minutes + ":" + seconds;
}


function formatTime(time) {
    if (time < 10) return "0" + time;
    return time;
}

setInterval(updatetime, 1000);





function setAlarmTime(value) {
    alarmtime = value;
}




function setAlarm() {
    if (alarmtime) {
        const current = new Date();
        const timeToalarm = new Date(alarmtime);
        if (timeToalarm > current) {
            const timeout = timeToalarm.getTime() - current.getTime();
            alarmtimeout = setTimeout(function () {
                audio.play();
                console.log("dhd");
            }, timeout);
        } alert("Alarm set!");
    }
}


// function clearAlarm() {
//     audio.pause();
//     if (alarmtimeout) {
//       clearTimeout(alarmtimeout);
//       alert("Alarm cleared");
//     }
//   }



