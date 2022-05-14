<section class="formation">
    <?php
    // Permet d'importer la cours des cours dans d'autres pages (ex: Index.php)
    
            $idCategorie = get_queried_object() -> slug;
            $nomCategorie = get_queried_object() -> name;

            //  echo get_bloginfo('template_directory');
            /*$ficher = $_SERVER['DOCUMENT_ROOT']."/4w4/wp-content/themes/HyppoliteC/data/test.txt";
            echo $ficher;
            file_put_contents($ficher,$nomCategorie);
            
            // echo $idCategorie;
            // echo $filename;
            // print_r($_SERVER)
            */
            $flecheAsc = '<svg width="18" height="18" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" color="#000"> <path fill-rule="evenodd" d="M3.293 9.707a1 1 0 010-1.414l6-6a1 1 0 011.414 0l6 6a1 1 0 01-1.414 1.414L11 5.414V17a1 1 0 11-2 0V5.414L4.707 9.707a1 1 0 01-1.414 0z" clip-rule="evenodd"></path> </svg>';
            $flecheDesc = '<svg width="18" height="18" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor" color="#000"> <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 14l-7 7m0 0l-7-7m7 7V3"></path> </svg>';
            
            $nouvelleOrdreTri; $nouvelleiconeTri; $texteBoutonTri;

            if ((!$_GET['ordre']) || ($_GET['ordre']=='asc')) { $nouvelleOrdreTri = 'desc'; $nouvelleiconeTri = $flecheDesc; $texteBoutonTri = 'Désendant'; }
            else { $nouvelleOrdreTri = 'asc'; $nouvelleiconeTri = $flecheAsc; $texteBoutonTri = 'Ascendant'; }
        ?>

    <?php wp_nav_menu(array( "menu" => "categorie_cours", "container" => "nav" )); ?>

    <nav class="boutonTri">
        <a href="?cletri=title&ordre=<?= $nouvelleOrdreTri; ?>"><?= $nouvelleiconeTri; ?><?= $texteBoutonTri; ?></a>
        <?php if (!isset($_COOKIE['hack'])) : ?>
        <a href="?hack=1">???</a>
        <?php endif; ?>
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
        <?php get_template_part("gabarits/content", "cours"); ?>
        <?php endwhile ?>

        <?php endif ?>
    </div>
</section>