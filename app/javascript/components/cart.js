const initCart = () => {
  const addButton = document.querySelector(".add");
  const cart = document.querySelector(".cart");

  addButton.addEventListener("click", (e) => {
    cart.classList.remove("hidden");
  });
};

export { initCart };
