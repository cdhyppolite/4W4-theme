<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@600;900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/4b9ba14b0f.js" crossorigin="anonymous"></script>
    <title>Carl-David Hyppolite</title>
    <?php wp_head(); ?>
</head>
<body <?php body_class('site'); ?>>
<header class="site__header">
            <?php the_custom_logo(); ?>
    <section class="site__header__titre">
        <h1>
            <a class="titreComplet" href="<?= esc_url( home_url( '/' ) ); ?>" rel="home">
                <?php $nom = get_bloginfo('name'); $delayAnim = 1;?>
                <!-- Séparer les lettres du titre -->
                    <?php while($nbLettre != strlen($nom)) : ?>
                        <div style="animation-delay:<?= $delayAnim?>s;" class="lettre"><?= $nom[$nbLettre]; ?></div>
                        <?php $delayAnim+=0.7 ?>
                        <?php $nbLettre++; ?>
                    <?php endwhile ?>
            </a>
        </h1>

        <h2 class="sousTitreComplet">
            <?php $sousTitre = get_bloginfo('description');?>
            <?php $tableauSousTitre = explode(' ',$sousTitre); $mot=0; $delayAnim = 0.75; $anim2=""?>
            <!-- Séparer le sous-titre dans des div pour l'animer -->
            <?php while ($mot !=(substr_count($sousTitre, ' ')+1) ): ?>
                <?php $delayAnim+=0.5 ?>
                <?php if ($mot >= 3) {
                    $anim2 = "animation-name :animSousTitre2, text-arc-en-ciel";
                } ?>
                <div style="animation-delay:<?= $delayAnim?>s; <?= $anim2; ?>" class="motSousTitre"><?= $tableauSousTitre[$mot]; ?></div>
                <?php $mot++ ?>
            <?php endwhile ?>
            
        </h2>
    </section>
    <section class="util">
        <div class="util__menu">
        <?php get_sidebar('entete_1') ?>
        </div>
            <?php get_search_form(); ?>
    </section>
</header>
<section class="site__barre">
    <input type="checkbox" id="chk-burger">
    <label for="chk-burger" id="burger">
        <div class="ligne"></div>
        <div class="ligne"></div>
        <div class="ligne"></div>
        <!-- <svg width="40px" height="40px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" color="#F7F1F0"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg> -->
    </label>
    <?php
    $icone= '<svg width="20" height="20" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" color="#000"><path d="M17.414 2.586a2 2 0 00-2.828 0L7 10.172V13h2.828l7.586-7.586a2 2 0 000-2.828z"></path><path fill-rule="evenodd" d="M2 6a2 2 0 012-2h4a1 1 0 010 2H4v10h10v-4a1 1 0 112 0v4a2 2 0 01-2 2H4a2 2 0 01-2-2V6z" clip-rule="evenodd"></path></svg>';
    ?>
    <?php wp_nav_menu(array("menu"=>"principal",
                            "container"=>"nav",
                            "link_before" => $icone)); ?>
</section>