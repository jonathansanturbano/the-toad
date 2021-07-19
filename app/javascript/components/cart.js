const initCart = () => {
  const addButton = document.querySelector(".add");
  const cart = document.querySelector(".cart");
  addButton.addEventListener("click", (e) => {
    cart.classList.remove("hidden");
    cart.style.color = `rgb(112, 111, 129)`;
    setTimeout(() => {
      cart.style.color = `#E2C52F`;
    }, 500);
    confetti();
  });
};

export { initCart };
