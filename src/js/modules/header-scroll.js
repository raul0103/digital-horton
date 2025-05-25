import { _debounce } from "../utils";

const body = document.querySelector("body");
const header = document.querySelector("header");

let header_scrolled = false;

const onResize = _debounce(() => {
  if (pageYOffset > header.clientHeight && !header_scrolled) {
    body.classList.add("header-scroll");
    header_scrolled = true;
  }

  if (pageYOffset < header.clientHeight && header_scrolled) {
    body.classList.remove("header-scroll");
    header_scrolled = false;
  }
}, 0);

if (window.innerWidth >= 1300) {
  window.addEventListener("scroll", onResize);
}
