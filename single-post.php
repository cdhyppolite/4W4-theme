<?php get_header(); ?>
<?php
    $codeCours = substr(get_the_title(), 0,7);
    //----Afficher Bordu cours-----
    $etat = "a-faire";
    $reussi = array("1J1", "2J2", "3J3", "1W1","2W2","3W3","1M1","1M2","2M3","2M4", "3M5","3C1");
    $encours = array("4J4","4PA","4W4","4C2");
    $choisi = array("5E1","5N1","5JA","5W5","5PA","6N3","6N2");
    $nonchoisi = array("5MB","5JB","4MB");
    if (in_array(substr($codeCours, 4,3), $reussi)) { 
        $etat = "reussi";
    } else if (in_array(substr($codeCours, 4,3), $encours)) { 
        $etat = "en-cours";
    } else if (in_array(substr($codeCours, 4,3), $choisi)) { 
        $etat = "choisi";
    } else if ((substr($codeCours, 3,1))!='-') {
        $etat = "echoue";
    }
    //-----------------------------
?>
        <input type="checkbox" id="chk-single">
        <main class="site__main <?= $etat; ?>" style="background-image: url('<?= get_the_post_thumbnail_url(); ?>');">
            <?php if (have_posts()): the_post(); ?>
            
            <article class="article__seul">
                <h4> <label for="chk-single"><?php the_title(); ?><div class="cours_etat"></div> </label></h4>
                <div class="article__seul__contenu">
                    <?php the_content(); ?>
                </div>
            </article>

            <?php endif; ?>
        </main>

        <?php get_footer(); ?>