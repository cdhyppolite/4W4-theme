<?php get_header(); ?>
<?php
    // ----Afficher Bordu cours-----
    $codeCours = substr(get_the_title(), 0,3);
    include get_theme_file_path( '/inclusions/conditionCoursBorder.php' ); 
?>

        <input type="checkbox" id="chk-single">
        <main class="site__main <?= $etat; ?>" style="background-image: url('<?php if (has_post_thumbnail()) { echo get_the_post_thumbnail_url(); } else { echo $imageBlank; } ?>');">
            <?php if (have_posts()): the_post(); ?>
            
            <article class="article__seul">
                <h2> <label for="chk-single"><?php the_title(); ?><div class="cours_etat"></div> </label></h2>
                <div class="article__seul__contenu">
                    <?php the_content(); ?>
                </div>
            </article>

            <?php endif; ?>
        </main>

        <?php get_footer(); ?>