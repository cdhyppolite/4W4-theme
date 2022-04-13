<?php get_header(); ?>
<?php
    $codeCours = substr(get_the_title(), 0,3);
    //----Afficher Bordu cours-----
    $etat = "a-faire";
    $reussi = array("1J1", "2J2", "3J3", "1W1","2W2","3W3","1M1","1M2","2M3","2M4", "3M5","3C1");
    $encours = array("4J4","4PA","4W4","4C2");
    $choisi = array("5E1","5N1","5JA","5W5","5PA","6N3","6N2");
    $nonchoisi = array("5MB","5JB","4MB");
    if (in_array($codeCours, $reussi)) { 
         $etat = "reussi";
        } else if (in_array($codeCours, $encours)) { 
            $etat = "en-cours";
        } else if (in_array($codeCours, $choisi)) { 
            $etat = "choisi";
        } else if (intval($codeCours[0])==0) {
            $etat = "echoue";
        }
    //-----------------------------
?>
        <input type="checkbox" id="chk-single">
        <main class="site__main <?= $etat; ?>" style="background-image: url('<?php if (has_post_thumbnail()) { echo get_the_post_thumbnail_url(); } else { echo "https://media.sciencephoto.com/image/f0244454/800wm"; } ?>');">
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