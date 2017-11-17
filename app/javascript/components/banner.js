import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["Find amazing cars", "Book a ride", "Reach new limits"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
