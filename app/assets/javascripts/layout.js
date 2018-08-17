
var menu = document.querySelector('.hidden-menu')

// document.querySelector('.menu').addEventListener('click', ()=> {
//   if (event.target.classList.contains('fa-bars')) {
//     menu.className = "hidden-menu show"  
//   } else if (event.target.classList.contains('fa-times')) {
//     menu.className = "hidden-menu hide"
//   }
// })

function showMenu() {
   menu.className = "hidden-menu show"
}

function hideMenu() {
   menu.className = "hidden-menu hide"
}
