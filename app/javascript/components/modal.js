const initModalOnClick = () => {
  const modal = document.querySelector(".smodal");
  const dropdown = document.getElementById("dropdown");
  const close = document.querySelector(".close");
  dropdown.addEventListener("click", (event) => {
    modal.style.transform = "translateX(-100%)";
  });
  close.addEventListener("click", (event) => {
    modal.style.transform = "translateX(0)";
  });
};

export { initModalOnClick };
