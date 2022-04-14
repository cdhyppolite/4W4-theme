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
    <!-- <h1>------ template evenements ------</h1> -->
    <h1><?php the_title(); ?></h1>
    <?php if (have_posts()): the_post(); ?>
    
        <?php if (has_post_thumbnail()): ?>
            <?php the_post_thumbnail('medium'); ?>
        <?php else: ?>
            <img src="https://media.sciencephoto.com/image/f0244454/800wm" alt="">
        <?php endif; ?>

        <?php the_title(); ?>
        <?php the_field('description'); ?>
        <p><?php the_field('organisateur'); ?></p>
        <p><?php the_field('endroit'); ?></p>
        <p><?php the_content(); ?></p>
        
    <?php endif; ?>
</main>

<?php get_footer(); ?>