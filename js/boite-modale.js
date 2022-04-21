(function() {
    // console.log("boite modale");
    // let bouttons = document.getElementsByClassName('cours__desc__bouton');
    let bouttons = document.querySelectorAll('.cours__desc__bouton');
    let boiteModale = document.querySelector('.boite__modale');
    let btnFermer = document.querySelector('.boite__modale__fermer');
    console.log(btnFermer);
    // console.log(bouttons, boiteModale);
    boiteModale.classList.add('boite__modale--ouvrir')


    for (const bout of bouttons) {
        bout.addEventListener('mousedown', function() {
            boiteModale.classList.add('boite__modale--ouvrir')
        })
    }

    btnFermer.addEventListener('mousedown', function() {
        boiteModale.classList.remove('boite__modale--ouvrir')
    })

}())