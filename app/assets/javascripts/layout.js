var bars = document.querySelector('.fa-bars')
var times = document.querySelector('.fa-times')
var menu = document.querySelector('.hidden-menu')

bars.addEventListener('click', ()=>{
  menu.className = "hidden-menu show"
})
times.addEventListener('click', ()=>{
  menu.className = "hidden-menu hide"
})

