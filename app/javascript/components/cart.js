const initCart = () => {
  const cartNumber = document.querySelector('.cart-number');
  const addButton = document.querySelector('.add');
  const cart = document.querySelector('.cart');

  addButton.addEventListener('click', (e) => {
    const number = parseInt(cartNumber.innerText) + 1;
    cartNumber.innerText = number;
    cart.classList.remove("hidden");
  });
};

export { initCart };
