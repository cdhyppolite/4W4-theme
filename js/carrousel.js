let ImagesGalerie = document.querySelectorAll('.galerie .wp-block-image img');
let modaleImg = document.querySelector('.boite__modale__img');
// Infos boite modale
let h2Modale = document.querySelector('.boite__modale__h2');
let footerModale = document.querySelector('.boite__modale__footer');
let navModale = document.querySelector('.boite__modale__navigation');

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
    let indexe = 0
        // console.log(ImagesGalerie.length);
    for (let i = 0; i <= ImagesGalerie.length; i++) {
        let btnImg = document.createElement('button');
        btnImg.dataset.indexNumber = i;
        navModale.append(btnImg);
    }

    for (const image of ImagesGalerie) {


        image.addEventListener('mousedown', function(event) {
            ouvrirFermer();
            recupererImage(event);
        })
    }
}())