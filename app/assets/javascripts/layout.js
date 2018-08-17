
var menu = document.querySelector('.hidden-menu')

document.addEventListener('click', ()=> {
  if (event.target.classList.contains('fa-bars')) {
    menu.className = "hidden-menu show"  
  } else if (event.target.classList.contains('fa-times')) {
    menu.className = "hidden-menu hide"
  }
})