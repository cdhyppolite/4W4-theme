<?php get_header(); ?>

<main class="site__main" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');">
    <?php if (have_posts()): the_post(); ?>
    <article class="article__seul">
        <?php the_title(); ?>
        <div class="article__seul__contenu">
            <?php if (has_post_thumbnail()): ?>
            <figure class="article__seul__contenu__figure">
                <?php the_post_thumbnail("medium"); ?>
            </figure>
            <?php endif; ?>
            <?php the_content(); ?>
        </div>
    </article>

    <?php endif; ?>
</main>

<?php get_footer(); ?>