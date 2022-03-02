<?php get_header() ?>
<main class="site__main"><!-- style="background-image: url('');" -->
     <h1>Bienvenue sur <i><?php bloginfo('name'); ?></i> !</h1>
     <h4>Voici le dernier cours de la liste:</h4>
     <?php if (have_posts()): the_post(); ?>
     <?php the_title() ?>
     <?php the_content() ?>

     <?php endif ?>

</main>
<?php get_footer() ?>