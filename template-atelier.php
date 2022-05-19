<!-- Ajout du fichier template-evenement.php -->
<?php
/**
 * Template Name: Ateliers
 *
 * @package WordPress
 * @subpackage cidw_4w4
 */
    get_header();
?>

<main class="site__main" style="background-color: <?php the_field('couleur'); ?>;">
   <section class="evenement">
      <!-- <h1>---- template-evenement.php ------</h1> -->
      <?php if (have_posts()):  the_post(); ?>

      <h1 class="evenement__titre">Nom de l'atelier: <?php the_title() ?></h1>

      <div class="evenement__contenu">
         <h2>Description de l'atelier</h2>
         <p>Animé par: <?php the_field('animateur'); ?></p>
         <p>Numéro du local: <?php the_field('local'); ?></p>
         <!-- Description -->
         <p><?php the_field('atelier_desc'); ?></p>

         <h2>Quand se déroulera l'atelier?</h2>
         <p>Atelier commence le <?php the_field('date_debut'); ?></p>
         <p>Atelier se termine le <?php the_field('date_fin'); ?></p>
         <p>Cette atelier formatif se donne les <?php the_field('jours'); ?></p>
         <p>L'heure: <?php the_field('heure_debut'); ?> à <?php the_field('heure_fin'); ?></p>
      </div>

      <?php endif ?>
   </section>
</main>

<?php get_footer(); ?>