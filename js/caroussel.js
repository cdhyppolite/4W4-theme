let ImagesGalerie = document.querySelectorAll('.galerie .wp-block-image img');
let modaleImg = document.querySelector('.boite__modale__img');

function recupererImage(event) {
    let imgCible = event.target;
    // console.log(imgCible.getAttribute('src'));
    modaleImg.setAttribute('src', imgCible.getAttribute('src'));
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