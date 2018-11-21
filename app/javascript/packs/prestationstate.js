const bookedIcon = document.querySelectorAll(".fa-thumbs-up");
const declinedIcon = document.querySelectorAll(".fa-times");

bookedIcon.forEach(function(icon) {
  icon.addEventListener('click', (event) => {
    console.log("bien ouej !!");
  });
});

declinedIcon.forEach(function(icon) {
  icon.addEventListener('click', (event) => {
    console.log("bien ouej !!");
  });
});



