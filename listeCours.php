<section class="formation">
        <?php
            $idCategorie = get_queried_object() -> term_id;
            $cat = get_the_category();
        ?>
        <!-- <?= $idCategorie; ?> -->
        <?php wp_nav_menu(array( "menu" => "categorie_cours", "container" => "nav" )); ?>
        <h2 class="formation__titre">Liste de cours - <?php if ($idCategorie ==5) { echo "Techniques d'intégration multimédia"; } else { echo $cat[1]->cat_name; } ?></h2>
        <?php if ($idCategorie!=5) :?>
            <!-- <h1><?= $cat[1]->cat_name; ?></h1> -->
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