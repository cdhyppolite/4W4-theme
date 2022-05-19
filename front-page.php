<?php get_header() ?>
<main class="site__main"><!-- style="background-image: url('');" -->
     <!-- <h1 class="formation__titre">Bienvenue sur <i><?php bloginfo('name'); ?></i> !</h1> -->
     <h1 class="formation__titre">TIM Maisonneuve</h1>

     <!------------------------------------ Menu accueil ------------------------------------>
    <?php wp_nav_menu(array("menu"=>"accueil",
                            "container"=>"nav")); ?>
     <!------------------------------------ Ateliers ------------------------------------>
    <h1 class="formation__titre">Voici les ateliers à venir</h1>
    <?php wp_nav_menu(array("menu"=>"atelier",
            "container"=>"nav")); ?>
    <!------------------------------------ Menu evenement ------------------------------------>
    <h1 class="formation__titre">Nos événements à venir</h1>
    <?php wp_nav_menu(array("menu"=>"evenement",
            "container"=>"nav")); ?>

     <!-- <h4>Récupéréer un post</h4> -->
     <?php if (have_posts()): the_post(); ?>
          <?php the_title() ?>
          <?php the_content() ?>
     <?php endif ?>
</main>
<?php get_footer() ?>