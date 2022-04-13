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
    <h1>------ template evenements ------</h1>
    <?php if (have_posts()): the_post(); ?>
    <?php the_post_thumbnail('thumbnail'); ?>
        <?php the_title(); ?>
        <?php the_content(); ?>
    <?php endif; ?>
</main>

<?php get_footer(); ?>