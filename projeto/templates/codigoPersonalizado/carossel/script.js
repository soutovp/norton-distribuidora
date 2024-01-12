document.addEventListener('DOMContentLoaded', function () {
 console.log('Com content Loaded.');

 const track1 = document.getElementById('carouselTrack-1');
 const track2 = document.getElementById('carouselTrack-2');
 const track3 = document.getElementById('carouselTrack-3');

 const listaCarouselUm = [
   {
     image: './img/banner-site-i6fqmgy82p.jpg',
     link: '#'
   },
   {
     image: './img/lixeiras-banner-pte5arw1ow.jpg',
     link: '#'
   },
   {
     image: './img/reportdezembro-sxuu0tmitr.jpg',
     link: '#'
   }
 ];

 function buildCarousel(track) {
   for (let item of listaCarouselUm) {
     track.innerHTML += `
       <div class="norton-carousel-item">
         <a href="${item.link}">
           <img src="${item.image}">
         </a>
       </div>
     `;
   }

   const itemWidth = document.querySelector('.norton-carousel-item').offsetWidth;

   for (let i = 0; i < listaCarouselUm.length; i++) {
     const clones = document.querySelector('.norton-carousel-item').cloneNode(true);
     track.appendChild(clones);
   }

   setInterval(function () {
     console.log('Intervalo Iniciado');
     track.style.transition = 'transform 0.5s ease-in-out';
     track.style.transform = `translateX(${-itemWidth}px)`;
     setTimeout(function () {
       track.style.transition = 'none';
       track.appendChild(track.firstElementChild);
       track.style.transform = 'translateX(0)';
     }, 500);
   }, 2000);
 }

 buildCarousel(track1);
 buildCarousel(track2);
 buildCarousel(track3);
});
