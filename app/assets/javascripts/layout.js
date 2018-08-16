var bars = document.querySelector('.fa-bars')
var times = document.querySelector('.fa-times')
var menu = document.querySelector('.hidden-menu')

bars.addEventListener('click', ()=>{
  menu.className = "hidden-menu show"
})
times.addEventListener('click', ()=>{
  menu.className = "hidden-menu hide"
})

document.querySelector

var positioner = 0;

position = window.scrollY
window.addEventListener('scroll', ()=> {
  if (window.scrollY < position) {
    document.querySelector('.floats').style = 'transform: translateY('+ position/100 +'em)'
    document.querySelector('.floats-2').style = 'transform: translateY(' + positioner/60 + 'em)'
    positioner++
  } else {
    document.querySelector('.floats').style = 'transform: translateY('+ position/100 +'em)'
    document.querySelector('.floats-2').style = 'transform: translateY(' + positioner/60 + 'em)'
    positioner = positioner - 1
  }
  position = window.scrollY
})