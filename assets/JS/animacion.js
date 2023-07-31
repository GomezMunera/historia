// Wrap every letter in a span
var textWrapper = document.querySelector('.ml1 .letters');
textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

// size
var widthcont = document.body.clientWidth;

anime.timeline({loop: 2})
  .add({
    targets: '.ml1 .letter',
    translateX: widthcont/4,
    //translateX: $content-width/10,
    scale: [0.3,1],
    opacity: [0,1],
    translateZ: 0,
    easing: "easeOutElastic",
    duration: 2000,
    rotate: '1turn',

    delay: (el, i) => 400 * (i+1)
  }).add({
    targets: '.ml1 .line',
    translateX: widthcont/4,
    scaleX: [0,1],
    opacity: [0.5,1],
    easing: "easeOutExpo",
    duration: 700,
    offset: '-=1000',
    delay: (el, i, l) => 80 * (l - i)
  }).add({
    targets: '.ml1',
    opacity: 1,
    duration: 1000,
    easing: "easeOutExpo",
    delay: 1000
  });

