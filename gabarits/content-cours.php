<?php 
                    $titre = get_the_title();
                    $titreFiltreCours = substr($titre, 4, -6);
                    //$nbHeures = substr($titre, -6);
                    $codeCours = substr($titre, 0,3);
                    $descCours = get_the_content();
                    $categorie = get_the_category();
                    $nombre_dheures = get_field('nombre_dheures');
                    
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
                    $imageBlank = get_bloginfo('template_directory')."/images/blank.jpg";
                ?>

<article class="formation__cours <?= $etat; ?> <?= $categorie[1]->slug; ?>"
    style="animation-delay:<?= $delayAnim?>s;">

    <div class="cours__img">
        <a href="<?php the_permalink(); ?>"> <img src="<?php if (has_post_thumbnail()) { echo get_the_post_thumbnail_url(); } else { echo $imageBlank; } ?>" alt=""> </a>
    </div>
    <div class="cours__texte">
        <h3 class="cours__titre">
            <a href="<?= get_permalink(); ?>"> <?= $titreFiltreCours; ?> </a>
        </h3>

        <div class="cours__nbre-heure"><?= $nombre_dheures; ?>
            <div class="horloge"></div>
        </div>

        <p class="cours__code"><?= $codeCours; ?></p>
        <div class="cours_etat"></div>
        <p class="cours__desc"> <?=wp_trim_words($descCours,20);?>
            <button class="cours__desc__bouton" onclick="">Lire la suite</button>
        </p>
        <div class="logoFiltre"></div>
    </div>
</article>

<?php $oui =false;
if ($oui==true) : ?>
<div class="">
    <div class="post_image">
        <!--CALL TO POST IMAGE-->
        
        <?php if ( has_post_thumbnail() != '' ) : ?>
        <div class=" imgwrap">
            <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
        </div>
        <?php else: ?>
        <div class=" imgwrap">
            <a href="<?php the_permalink(); ?>"><img src="<?= $imageBlank; ?>" alt=""></a>
        </div>
        <?php endif ?>

    </div><!-- post image -->
    <div class=" post_content2">
        <div class=" post_content3">
            <?php the_title( sprintf( '<h2 class="postitle_lay"><a href="%s" rel="bookmark">', esc_url( get_permalink() ) ), '</a></h2>' ); ?>
            <p><?php the_excerpt(); ?></p>
        </div> <!-- .post_content2 -->
    </div><!-- post_content3 -->
</div>
<?php endif ?>