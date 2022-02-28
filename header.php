<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Ubuntu&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@600;900&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/4b9ba14b0f.js" crossorigin="anonymous"></script>
    <title>Document</title>
    <?php wp_head(); ?>
</head>
<body <?php body_class('site'); ?>>
<header class="site__header">
    <section class="site__header__titre">
        <h1><a href="<?= esc_url( home_url( '/' ) ); ?>" rel="home"> <?php bloginfo('name'); ?> </a></h1>
        <h2><?= get_bloginfo('description'); ?></h2>
    </section>
    <section class="util">
            <?php get_search_form(); ?>
    </section>
</header>
<section class="site__barre">
    <input type="checkbox" id="chk-burger">
    <label for="chk-burger" id="burger">
        <svg width="40px" height="40px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" color="#F7F1F0"><path fill-rule="evenodd" d="M3 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zm0 5a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1z" clip-rule="evenodd"></path></svg>
    </label>
    <?php wp_nav_menu(array("menu"=>"principal", "container"=>"nav")); ?>
</section>