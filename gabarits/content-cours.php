<?php
                    $titre = get_the_title();
                    $titreFiltreCours = substr($titre, 4, -6);
                    $nbHeures = substr($titre, -6);
                    $codeCours = substr($titre, 0,3);
                    $descCours = get_the_excerpt();
                    $categorie = get_the_category();
                    
                    //----Afficher Bordu cours-----
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
                    //-----------------------------
                    $delayAnim+=0.05;
                ?>
                
                <article class="formation__cours <?= $etat; ?> <?= $categorie[1]->slug; ?>" style="animation-delay:<?= $delayAnim?>s; background-image: url('<?= get_the_post_thumbnail_url(); ?>');">
                    <h3 class="cours__titre"> <a href="<?= get_permalink(); ?>"> <?= $titreFiltreCours; ?> </a></h3>
                    <div class="cours__nbre-heure"><?= $nbHeures; ?></div>
                    <p class="cours__code"><?= $codeCours; ?></p>
                    <div class="cours_etat"></div>
                    <p class="cours__desc"> <?= $descCours; ?></p>
                    <div class="logoFiltre"></div>
                </article>