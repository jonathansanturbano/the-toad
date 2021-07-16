const initModalOnClick = () => {
  const modal = document.querySelector(".smodal");
  const dropdown = document.getElementById("dropdown");
  const close = document.querySelector(".close");
  dropdown.addEventListener("click", (event) => {
    modal.style.right = 0;
  });
  close.addEventListener("click", (event) => {
    modal.style.right = "-100%";
  });
};

export { initModalOnClick };
