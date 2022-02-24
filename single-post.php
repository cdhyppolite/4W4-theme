<?php get_header(); ?>
<main class="site__main">
    <h1>---Un seul cours---</h1>
    <?php if (have_posts()):
        while (have_posts()): the_post(); ?>
        <article class="cours">
             <?php the_post_thumbnail("medium"); ?>
            <h1 class="cours__titre"><?php the_title(); ?></h1>
            <p class="cours__titre"><?= get_the_content(); ?></p>
        </article>
        <?php endwhile; ?>
        <?php endif; ?>
</main>
<?php get_footer(); ?>