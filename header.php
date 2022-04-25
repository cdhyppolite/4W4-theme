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
</head>

<body <?php body_class('site'); ?>  style="background-color: <?=get_theme_mod('background_body'); ?>;">
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
<!-- Menu avec la liste des cours -->
<?php include('inclusions/menuBarreCours.php');?>