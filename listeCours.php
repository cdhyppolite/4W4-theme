<section class="formation">
        <?php wp_nav_menu(array( "menu" => "categorie_cours", "container" => "nav" )); ?>
        <h2 class="formation__titre">Liste de cours - Techniques d'intégration multimédia</h2>
        
        <?php $cat = get_the_category(); echo $cat[1]->cat_name; ?>
        <?= category_description(); ?>
        <div class="formation__liste">
            <?php $delayAnim=1; ?>
            <?php if (have_posts()):
                while (have_posts()): the_post(); ?>
                <?php get_template_part("gabarits/content", "cours"); ?>
                <?php endwhile ?>
                <?php endif ?>
        </div>
    </section>