<!-- Ajout du fichier template-atelier.php -->
<?php
/**
 * Template Name: Ateliers
 *
 * @package WordPress
 * @subpackage cidw_4w4
 */
    get_header();
?>

<main class="site__main" style="background-color: <?php the_field('couleur'); ?>; color:<?php the_field('couleur_texte'); ?>;">
   <section class="atelier">

      <h1 class="atelier__titre">Nom de l'atelier: <?php the_title() ?></h1>

      <div class="atelier__contenu">
         <h2 class="atelier__sous-titre">Description de l'atelier</h2>
         <p>Animé par: <?php the_field('animateur'); ?></p>
         <p>Au local <i><?php the_field('local'); ?></i> du Collège de Maisonneuve</p>
         <!-- Description -->
         <p class="atelier__description"><?php the_field('atelier_desc'); ?></p>

         <h2 class="atelier__sous-titre">Quand se déroulera l'atelier?</h2>
         <p>Atelier commence le <?php the_field('date_debut'); ?></p>
         <p>Atelier se termine le <?php the_field('date_fin'); ?></p>
         <p>Cet atelier se donne par séance de <?php the_field('duree'); ?> heure(s)</p>
         <p class="atelier__jours">Cette atelier formatif se donne les <i><?php the_field('jours'); ?></i></p>
         <p>L'heure: <?php the_field('heure_debut'); ?> à <?php the_field('heure_fin'); ?></p>
      </div>

   </section>
   
   <h2 class="atelier__sous-titre">Voir les autres ateliers</h2>
   <?php wp_nav_menu(array("menu"=>"atelier",
            "container"=>"nav")); ?>
</main>

<?php get_footer(); ?>