<?php get_header() ?>
<main class="principal">
    <section class="formation">
        <h2 class="formation__titre">Liste des cours du programme TIM</h2>
        <div class="formation__liste">
            <?php if (have_posts()):
                while (have_posts()): the_post(); ?>
                <?php
                    $titre = get_the_title();
                    $titreFiltreCours = substr($titre, 7, -6);
                    $nbHeures = substr($titre, -6);
                    $codeCours = substr($titre, 0,7);
                    $descCours = get_the_excerpt();

                    $etat = "a-faire";
                    $reussi = array("1J1", "2J2", "3J3", "1W1","2W2","3W3","1M1","1M2","2M3","2M4", "3M5","3C1",);
                    $encours = array("4J4","4PA","4W4","4C2",);
                    if (in_array(substr($codeCours, 4,3), $reussi)) { 
                        $etat = "reussi";
                    } else if (in_array(substr($codeCours, 4,3), $encours)) { 
                        $etat = "en-cours";
                    }
                ?>
                <article class="formation__cours <?= $etat; ?>">
                        <h3 class="cours__titre"> <?= $titreFiltreCours; ?></h3>
                        <div class="cours__nbre-heure"><?= $nbHeures; ?></div>
                        <p class="cours__code"><?= $codeCours; ?> </p>
                        <div class="cours_etat"></div>
                        <p class="cours__desc"> <?= $descCours; ?></p>
                    </article>
                <?php endwhile ?>
                <?php endif ?>
        </div>
    </section>
</main>
<?php get_footer() ?>