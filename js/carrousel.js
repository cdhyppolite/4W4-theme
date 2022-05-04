let ImagesGalerie = document.querySelectorAll('.galerie .wp-block-image img');
let modaleImg = document.querySelector('.boite__modale__img');
// Infos boite modale
let h2Modale = document.querySelector('.boite__modale__h2');
let footerModale = document.querySelector('.boite__modale__footer');
let navModale = document.querySelector('.boite__modale__navigation');
let modaleBtnImgActuel = 0;

function recupererImage(event) {
    let imgCible = event.target;
    // console.log(imgCible.dataset.indexNumber);
    // console.log(imgCible.getAttribute('src'));
    modaleImg.setAttribute('src', imgCible.getAttribute('src'));

    titreModale.classList.add('cacher');
    footerModale.classList.add('cacher');
    descriptionModale.classList.add('cacher');
    h2Modale.classList.add('cacher');
    // modaleBtnImgActuel = imgCible.dataset.indexNumber;
}

function imageBtn(event) {
    let cible = event.target;
    modaleImg.setAttribute('src', ImagesGalerie[cible.dataset.indexNumber].getAttribute('src'));
    modaleBtnImgActuel = cible.dataset.indexNumber;
    // console.log(modaleBtnImgActuel);
    // console.log(cible.dataset.indexNumber);
}

function imageBtnSuivPre(choix) {
    if (choix) {
        modaleBtnImgActuel += 1;
        if (modaleBtnImgActuel >= ImagesGalerie.length) modaleBtnImgActuel = 0;
    } else {
        modaleBtnImgActuel -= 1;
        if (modaleBtnImgActuel <= 0) modaleBtnImgActuel = ImagesGalerie.length;
    }
    // console.log(modaleBtnImgActuel);

    modaleImg.setAttribute('src', ImagesGalerie[modaleBtnImgActuel].getAttribute('src'));

}


(function() {

    let btnImgMoins = document.createElement('button');
    btnImgMoins.title = "Précédent";
    btnImgMoins.classList.add('ordre');
    navModale.append(btnImgMoins);

    btnImgMoins.addEventListener('mousedown', function() {
        imageBtnSuivPre(false);
    })

    // Boutons pour les images
    for (let i = 0; i < ImagesGalerie.length; i++) {
        let btnImg = document.createElement('button');
        btnImg.dataset.indexNumber = i;
        btnImg.title = "Image " + i;
        navModale.append(btnImg);

        btnImg.addEventListener('mousedown', function(event) {
            imageBtn(event);
        })
    }

    let btnImgPlus = document.createElement('button');
    btnImgPlus.title = "Suivant";
    btnImgPlus.classList.add('ordre');
    navModale.append(btnImgPlus);

    btnImgPlus.addEventListener('mousedown', function() {
        imageBtnSuivPre(true);
    })

    for (const image of ImagesGalerie) {


        image.addEventListener('mousedown', function(event) {
            ouvrirFermer();
            recupererImage(event);
        })
    }
}())