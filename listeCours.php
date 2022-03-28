<section class="formation">
        <?php wp_nav_menu(array( "menu" => "categorie_cours", "container" => "nav" )); ?>
        <h2 class="formation__titre">Liste de cours - Techniques d'intégration multimédia</h2>
        <div class="formation__liste">
            <?php $delayAnim=1; ?>
            <?php if (have_posts()):
                while (have_posts()): the_post(); ?>
                <?php
                    $titre = get_the_title();
                    $titreFiltreCours = substr($titre, 7, -6);
                    $nbHeures = substr($titre, -6);
                    $codeCours = substr($titre, 0,7);
                    $descCours = get_the_excerpt();
                    
                    //----Afficher Bordu cours-----
                    $etat = "a-faire";
                    $reussi = array("1J1", "2J2", "3J3", "1W1","2W2","3W3","1M1","1M2","2M3","2M4", "3M5","3C1");
                    $encours = array("4J4","4PA","4W4","4C2");
                    $choisi = array("5E1","5N1","5JA","5W5","5PA","6N3","6N2");
                    $nonchoisi = array("5MB","5JB","4MB");
                    if (in_array(substr($codeCours, 4,3), $reussi)) { 
                        $etat = "reussi";
                    } else if (in_array(substr($codeCours, 4,3), $encours)) { 
                        $etat = "en-cours";
                    } else if (in_array(substr($codeCours, 4,3), $choisi)) { 
                        $etat = "choisi";
                    } else if ((substr($codeCours, 3,1))!='-') {
                        $etat = "echoue";
                    }
                    //-----------------------------
                    $delayAnim+=0.05;
                ?>
                
                <article style="animation-delay:<?= $delayAnim?>s; background-image: url('<?= get_the_post_thumbnail_url(); ?>');" class="formation__cours <?= $etat; ?>">
                <!-- <article class="formation__cours <?= $etat; ?>"> -->
                    <h3 class="cours__titre"> <a href="<?= get_permalink(); ?>"> <?= $titreFiltreCours; ?> </a></h3>
                    <div class="cours__nbre-heure"><?= $nbHeures; ?></div>
                    <p class="cours__code"><?= $codeCours; ?>-MA </p>
                    <div class="cours_etat"></div>
                    <p class="cours__desc"> <?= $descCours; ?></p>
                </article>
                <?php endwhile ?>
                <?php endif ?>
        </div>
    </section>