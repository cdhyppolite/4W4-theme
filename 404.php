<?php get_header() ?>
<main class="site__main">
    <?php $cnfp_options = get_option( 'cnfp_settings' ); ?>

    <div class="erreur404">
        <h1>La page est introuvable.</h1>
        <div class="err">4</div>
        <i class="far fa-question-circle fa-spin"></i>
        <div class="err2">4</div>
        <div class="msg">Oups... :'( <br> Impossible de trouver la page demandée...</div>
    </div>

</main>
<?php get_footer() ?>