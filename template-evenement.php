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

<main class="site__main">
     <section class="evenement">
     <h1>---- template-evenement.php ------</h1>
     <?php if (have_posts()):  the_post(); ?>
     <?php the_post_thumbnail(); ?>
     <?php the_title() ?>
     <p class='evenement__resume'><?php the_field('resume'); ?></p>
     <p class='evenement__endroit'><?php the_field('endroit'); ?></p> 
     <p>Organisé par: <?php the_field('organisateur'); ?></p>
     <p>Date: <?php the_field('date'); ?></p>
     <p>Heure: <?php the_field('heure'); ?></p>
     
     <?php 
        $image = get_field('image');
        if( !empty( $image ) ): ?>
        <img src="<?php echo esc_url($image['url']); ?>" alt="<?php echo esc_attr($image['alt']); ?>" />
     <?php endif; ?>

     <?php endif ?>
     </section>
</main>

<?php get_footer(); ?>