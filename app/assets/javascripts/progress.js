window.onload = function () {
var bar = document.getElementById("myProgress");
var quota = Number(document.getElementById("quota").innerHTML);


function setProgress(percent) {
  bar.style.width = percent + "%";

  if (percent > 70) {
    bar.className = "progress-bar progress-bar-success progress-bar-striped active";
  } else if (percent > 35) {
    bar.className = "progress-bar progress-bar-warning progress-bar-striped active";
  }
}

setProgress(quota);

var category = document.getElementById(category);

function setColor(performance){
  
}
};
