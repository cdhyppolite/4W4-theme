let bouttons = document.querySelectorAll('.cours__desc__bouton');
let boiteModale = document.querySelector('.boite__modale');
let boiteModaleFond = document.querySelector('.boite__modale__fond');
let btnFermer = document.querySelector('.boite__modale__fermer');
// Infos de la boite modale
let titreModale = document.querySelector('.boite__modale__titre__cours');
let descriptionModale = document.querySelector('.boite__modale__texte');
let heureModale = document.querySelector('.boite__modale__heure');
let categorieModale = document.querySelector('.boite__modale__categorie');
let departementModale = document.querySelector('.boite__modale__departement');
let page = document.querySelector('html');

// Obtenir l'URL du site
var getUrl = window.location;
var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];

function ouvrirFermer() {
    boiteModale.classList.toggle('ouvrir');
    boiteModaleFond.classList.toggle('ouvrir');
    page.classList.toggle('bloquer');
}

function recupererContenu(event) {
    let btnCible = event.target;
    let titre = btnCible.parentNode.querySelector('.cours__titre').querySelector('a').innerHTML;
    let description = btnCible.parentNode.querySelector('.cours__desc__complet').innerHTML;
    let duree = btnCible.parentNode.querySelector('.cours__nbre-heure').innerText;
    let code = btnCible.parentNode.querySelector('.cours__code').innerHTML;
    let categorie = btnCible.parentNode.parentNode.classList[2];
    let departement = btnCible.parentNode.querySelector('.cours__departement').innerHTML;

    // Transférer les variables dans la boite modale
    titreModale.innerHTML = code + " - " + titre;
    descriptionModale.innerHTML = description;
    heureModale.innerHTML = duree;
    categorieModale.innerHTML = '<a href="' + baseUrl + '/category/' + categorie +
        '/">' + (categorie.charAt(0).toUpperCase() + categorie.slice(1)) + '</a>';
    departementModale.innerHTML = departement;

    modaleImg.classList.add('cacher');
    navModale.classList.add('cacher');
}

(function() {
    for (const bout of bouttons) {
        bout.addEventListener('mousedown', function(event) {
            ouvrirFermer();
            recupererContenu(event);
        })
    }

    btnFermer.addEventListener('mousedown', function() {
        ouvrirFermer();
    })
    boiteModaleFond.addEventListener('mousedown', function() {
        ouvrirFermer();
    })

}())