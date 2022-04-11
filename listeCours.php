<section class="formation">
    <?php
            $idCategorie = get_queried_object() -> slug;
            $nomCategorie = get_queried_object() -> name;

            /*$ficher = $_SERVER['DOCUMENT_ROOT']."/4w4/wp-content/themes/HyppoliteC/data/test.txt";
            echo $ficher;
            file_put_contents($ficher,$nomCategorie);
            
            // echo $idCategorie;
            // echo $filename;
            // print_r($_SERVER)
            */
            $flecheAsc = '<svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" color="#000"> <path fill-rule="evenodd" d="M3.293 9.707a1 1 0 010-1.414l6-6a1 1 0 011.414 0l6 6a1 1 0 01-1.414 1.414L11 5.414V17a1 1 0 11-2 0V5.414L4.707 9.707a1 1 0 01-1.414 0z" clip-rule="evenodd"></path> </svg>';
            $flecheDesc = '<svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" color="#000"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 14l-7 7m0 0l-7-7m7 7V3"></path> </svg>';
        ?>

    <?php wp_nav_menu(array( "menu" => "categorie_cours", "container" => "nav" )); ?>

    <nav class="boutonTri">
        <a href="?cletri=title&ordre=asc"><?= $flecheAsc; ?>Ascendant</a>
        <a href="?cletri=title&ordre=desc"><?= $flecheDesc; ?>Désendant</a>
    </nav>

    <h2 class="formation__titre">Liste de cours -
        <?php if ($idCategorie =="cours") { echo "Techniques d'intégration multimédia"; } else { echo $nomCategorie; } ?>
    </h2>

    <?php if ($idCategorie!="cours") :?>
    <p><?= category_description(); ?></p>
    <?php endif; ?>

    <div class="formation__liste">
        <?php $delayAnim=1; ?>
        <?php if (have_posts()):
                while (have_posts()): the_post(); ?>
        <?php
                    $nombre_dheures = get_field('nombre_dheures');
                    echo $nombre_dheures;
                ?>
        <?php get_template_part("gabarits/content", "cours"); ?>
        <?php endwhile ?>
        <?php endif ?>
    </div>
</section>