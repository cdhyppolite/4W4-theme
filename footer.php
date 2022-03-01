<?php
    $date = new DateTime();
    $date->setTimezone(new DateTimeZone('America/Detroit'));
    $fdate = $date->format('d-M-Y à H:i');
?>
<footer class="site__footer">
    <h2 class="footer__titre">Page généré le: <?= $fdate; ?></h2>
    <p class="footer__presentation">Prototype de site web Wordpress fait dans le cours 4W4</p>
    <h3 class="footer__author"><i>Version original Fait par Florence Lemieux Cayer</i> - Modifié par Carl-David Hyppolite</h3>
    <p class="footer__presentation elem elem__p">&copy; <?php echo date("Y"); ?> - TIM Maisonneuve - Tous droits réservés</p>
<?php 

$icone = '<svg width="20px" height="20px" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" color="#f00"><path fill-rule="evenodd" d="M10.293 15.707a1 1 0 010-1.414L14.586 10l-4.293-4.293a1 1 0 111.414-1.414l5 5a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0z" clip-rule="evenodd"></path><path fill-rule="evenodd" d="M4.293 15.707a1 1 0 010-1.414L8.586 10 4.293 5.707a1 1 0 011.414-1.414l5 5a1 1 0 010 1.414l-5 5a1 1 0 01-1.414 0z" clip-rule="evenodd"></path></svg>';
wp_nav_menu(array(
                    "menu"=>"simple",
                    "container"=>"nav",
                    "container_class"=>"site__footer__menu",
                    "menu_class"=>"site__footer__menu__ul",

                    "link_before"=>$icone)); ?>
</footer>
<?php wp_footer(); ?>

</body>

</html>