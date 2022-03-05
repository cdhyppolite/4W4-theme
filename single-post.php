<?php get_header(); ?>
<?php
    $codeCours = substr(get_the_title(), 0,7);
    //----Afficher Bordu cours-----
    $etat = "a-faire";
    $reussi = array("1J1", "2J2", "3J3", "1W1","2W2","3W3","1M1","1M2","2M3","2M4", "3M5","3C1",);
    $encours = array("4J4","4PA","4W4","4C2",);
    if (in_array(substr($codeCours, 4,3), $reussi)) { 
        $etat = "reussi";
    } else if (in_array(substr($codeCours, 4,3), $encours)) { 
        $etat = "en-cours";
    }
    //-----------------------------
?>
<main class="site__main <?= $etat; ?>" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');">
    <?php if (have_posts()): the_post(); ?>
    <article class="article__seul">
        <h4><?php the_title(); ?><div class="cours_etat"></div></h4>
        <div class="article__seul__contenu">
            

            <!-- <?php if (has_post_thumbnail()): ?>
            <figure class="article__seul__contenu__figure">
                <?php  the_post_thumbnail("medium"); ?>
            </figure>
            <?php endif; ?> -->

            <?php the_content(); ?>
        </div>
        
    </article>

    <?php endif; ?>
</main>

<?php get_footer(); ?>