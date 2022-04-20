(function() {
    // console.log("boite modale");
    // let bouttons = document.getElementsByClassName('cours__desc__bouton');
    let bouttons = document.querySelectorAll('.cours__desc__bouton');
    let boiteModale = document.querySelector('.boite__modale');
    // console.log(bouttons, boiteModale);


    for (const bout of bouttons) {
        bout.addEventListener('mousedown', function() {
            boiteModale.classList.add('boite__modale--ouvrir')
        })
    }

    boiteModale.addEventListener('mousedown', function() {
        boiteModale.classList.remove('boite__modale--ouvrir')
    })

}())