let bouttons = document.querySelectorAll('.cours__desc__bouton');
let boiteModale = document.querySelector('.boite__modale');
let btnFermer = document.querySelector('.boite__modale__fermer');

function ouvrirFermer() {
    boiteModale.classList.toggle('boite__modale--ouvrir')
}

function prendreContenu(event) {
    let btnCible = event.target;
    let titre = btnCible.parentNode.querySelector('.cours__titre').querySelector('a').innerHTML;
    let description = btnCible.parentNode.querySelector('.cours__desc__complet').innerHTML;
    let duree = btnCible.parentNode.querySelector('.cours__nbre-heure').innerText;
    let code = btnCible.parentNode.querySelector('.cours__code').innerHTML;
    console.log(code);
    // btnCible.
}

(function() {
    for (const bout of bouttons) {
        bout.addEventListener('mousedown', function(event) {
            ouvrirFermer();
            prendreContenu(event);

            // .closest('div[someAtrr]');
        })
    }

    btnFermer.addEventListener('mousedown', function() {
        ouvrirFermer();
    })

}())