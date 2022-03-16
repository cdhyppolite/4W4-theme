/*///////////////////////////////////////////////////////////////////////
                            LES VARIABLES
///////////////////////////////////////////////////////////////////////*/

//Référence au document...pour raccourcir les scripts
let d = document;

//On met le mot quiz dans  l'interface en haut du pied de page
//avec un délai cumulatif
let elmDiv;
let compteur = 0;
for (uneLettre of "RAINBOW") {
    elmDiv = document.createElement("div");
    elmDiv.innerText = uneLettre;
    elmDiv.classList.add("lettre");

    //Gestion du délai d'animation
    elmDiv.style.animationDelay = compteur + "s";
    compteur += 0.5;
}
console.log(d.querySelector("footer"));