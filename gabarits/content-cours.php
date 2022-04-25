<?php 
    $titre = get_the_title();
    $titreFiltreCours = substr($titre, 4, -6);
    $departement = get_field('departement');
    //$nbHeures = substr($titre, -6);
    $codeCours = substr($titre, 0,3);
    $descriptionCours = get_the_content();
    $categorie = get_the_category();
    $nombre_dheures = get_field('nombre_dheures');
?>
<?php 
    // ----Afficher Bordu cours-----
    include get_theme_file_path( '/inclusions/conditionCoursBorder.php' );
?>

<article class="formation__cours <?= $etat; ?> <?= $categorie[1]->slug; ?>" style="animation-delay:<?= $delayAnim?>s;">

    <div class="cours__img">
        <a href="<?php the_permalink(); ?>"> <img src="<?php if (has_post_thumbnail()) { echo get_the_post_thumbnail_url(); } else { echo $imageBlank; } ?>" alt=""> </a>
    </div>
    <div class="cours__texte">
        <h3 class="cours__titre"> <a href="<?= get_permalink(); ?>"> <?= $titreFiltreCours; ?> </a> </h3>

        <div class="cours__nbre-heure">
            <?= $nombre_dheures; ?> <div class="horloge"></div>
        </div>

        <p class="cours__code"><?= $codeCours; ?></p>
        <div class="cours_etat"></div>
        <p class="cours__desc"> <?=wp_trim_words($descriptionCours,20);?>
        <p class="cours__desc__complet" style="display: none;"> <?=$descriptionCours;?>
            <p>Département: <z class="cours__departement"><?= substr($departement, 3); ?></z> </p>
        </p>
        <button class="cours__desc__bouton" onclick="">Lire la suite</button>
        <div class="logoFiltre"></div>
    </div>
</article>