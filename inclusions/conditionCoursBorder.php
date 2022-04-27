<?php
// Comme ces lignes sont utilisés dans plusieurs page, je l'ai réunie ici pour pouvoir les modifiers partout
    if (isset($_COOKIE['hack'])) {
        $etat= "echoue";
    } else {
        $etat = "a-faire";
        $reussi = array("1J1", "2J2", "3J3", "1W1","2W2","3W3","1M1","1M2","2M3","2M4", "3M5","3C1");
        $encours = array("4J4","4PA","4W4","4C2");
        $choisi = array("5E1","5N1","5JA","5W5","5PA","6N3","6N2");
        $nonchoisi = array("5MB","5JB","4MB");
        if (in_array($codeCours, $reussi)) {
            $etat = "reussi";
        } else if (in_array($codeCours, $encours)) {
            $etat = "en-cours";
        } else if (in_array($codeCours, $choisi)) {
            $etat = "choisi";
        } else if (intval($codeCours[0])==0) {
            $etat = "echoue";
        }
    }
    if ($codeCours=='4J4') {$departement='360 '.substr($departement, 3);}
    $codeCours = substr($departement, 0,3). '-'. substr($titre, 0,3);
    //-----------------------------
    $delayAnim+=0.05;
    $imageBlank = get_bloginfo('template_directory')."/images/blank.jpg";
?>