<!-- Ajout du fichier template-evenement.php -->
<?php
/**
 * Template Name: Événements
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

      <h1 class="evenement__titre"><?php the_title() ?></h1>

      <?php $image = get_field('image'); ?>
      <?php if( !empty( $image ) ): ?>
         <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
      <?php endif; ?>

      <p class='evenement__resume'><?php the_field('resume'); ?></p>
      <p class='evenement__endroit'>Lieu: <?php the_field('endroit'); ?></p>
      <p>Organisé par: <?php the_field('organisateur'); ?></p>
      <p>Date: <?php the_field('date'); ?></p>
      <p>Heure: <?php the_field('heure'); ?></p>

      <?php endif ?>
   </section>
</main>

<?php get_footer(); ?>