const scrollBtn = document.querySelector(".scroll-btn");

scrollBtn.addEventListener("click", () => {
    window.scrollTo({ top: 0, behavior: "smooth" });
});
