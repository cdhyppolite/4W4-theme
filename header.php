<?php
if (($_GET['hack']) && (!isset($_COOKIE["hack"]))) {
    setcookie('hack', "oui", (time() + 600), 'https://eddym27.sg-host.com/',);
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <!-- Polices importés -->
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@600;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dela+Gothic+One&family=Roboto+Slab&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Anybody:wght@200&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Oswald&display=swap" rel="stylesheet">
    <link href="https://fonts.cdnfonts.com/css/super-mario-256" rel="stylesheet">
    <link rel="preload" href="<?php echo (get_bloginfo('template_directory')."/fonts/moon_get-Heavy.woff2") ?>" as="font" type="font/woff2" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=RocknRoll+One&display=swap" rel="stylesheet">
    <!-- Script pour l'erreur 404 -->
    <script src="https://kit.fontawesome.com/4b9ba14b0f.js" crossorigin="anonymous"></script>
    <title><?= get_bloginfo('name'); ?></title>
    <?php wp_head(); ?>
    <style>
        .home::after {
            background-color: <?=get_theme_mod('background_etoile'); ?>;
        }
    </style>
</head>

<body <?php body_class('site'); ?> >
<header class="site__header" style="background-color: <?=get_theme_mod('background_header'); ?>;">
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

    <label class="burger__etiquette" for="site__header__util-checkbox">
            <svg width="24" height="24" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" color="#000"><path fill-rule="evenodd" d="M12.586 4.586a2 2 0 112.828 2.828l-3 3a2 2 0 01-2.828 0 1 1 0 00-1.414 1.414 4 4 0 005.656 0l3-3a4 4 0 00-5.656-5.656l-1.5 1.5a1 1 0 101.414 1.414l1.5-1.5zm-5 5a2 2 0 012.828 0 1 1 0 101.414-1.414 4 4 0 00-5.656 0l-3 3a4 4 0 105.656 5.656l1.5-1.5a1 1 0 10-1.414-1.414l-1.5 1.5a2 2 0 11-2.828-2.828l3-3z" clip-rule="evenodd"></path></svg>
        </label>
    <input class="burger__checkbox" type="checkbox" id="site__header__util-checkbox">
    
    <section class="util">
        <div class="util__menu">
            <?php get_sidebar('entete_1') ?>
        </div>
        <?php get_search_form(); ?>
    </section>
    
</header>
<!-- Menu avec la liste des cours -->
<?php include('inclusions/menuBarreCours.php');?>