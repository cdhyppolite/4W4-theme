let ImagesGalerie = document.querySelectorAll('.galerie .wp-block-image img');
let modaleImg = document.querySelector('.boite__modale__img');
// Infos boite modale
let h2Modale = document.querySelector('.boite__modale__h2');
let footerModale = document.querySelector('.boite__modale__footer');

function recupererImage(event) {
    let imgCible = event.target;
    // console.log(imgCible.getAttribute('src'));
    modaleImg.setAttribute('src', imgCible.getAttribute('src'));

    titreModale.classList.add('cacher');
    footerModale.classList.add('cacher');
    descriptionModale.classList.add('cacher');
    h2Modale.classList.add('cacher');
}

(function() {
    // console.log(ImagesGalerie.length);

    for (const image of ImagesGalerie) {
        image.addEventListener('mousedown', function(event) {
            ouvrirFermer();
            recupererImage(event);
        })
    }
}())