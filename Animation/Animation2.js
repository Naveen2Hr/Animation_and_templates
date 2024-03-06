const button = document.getElementById('animateButton');

button.addEventListener('click', () => {
  button.classList.add('animated');
  
  setTimeout(() => {
    button.classList.remove('animated');
  }, 1000);
});
