<?php
function cidw_4w4_enqueue() {
    wp_enqueue_style('style_css', get_template_directory_uri() . '/style.css', array(), filemtime(get_template_directory() . '/style.css'), false);
    wp_enqueue_style( 'lab3-cdh-google-fonts', 'https://fonts.googleapis.com/css2?family=Supermercado+One&display=swap', false );
}
add_action( 'wp_enqueue_scripts', 'cidw_4w4_enqueue' );

// -----------------------------------------------------

// --------------------------------------------------- Enregistrer Menu

function cidw_4w4_enregistre_mon_menu() {
    register_nav_menus(array(
        'principal', __( 'Menu principal', 'cidw_4w4' ),
        'simple', __( 'Menu simple', 'cidw_4w4' )
      )
    );
  }
  
  add_action( 'after_setup_theme', 'cidw_4w4_enregistre_mon_menu' );
  
  // ---------------------------------------------------- Filtrer les choix du menu
  function cidw_4w4_filtre_le_menu($obj_menu) {
      foreach ($obj_menu as $cle => $valeur) {

        //   $valeur->title = substr($valeur->title,0,7);
          $valeur->title = wp_trim_words($valeur->title,4,"...");
      }
      return $obj_menu;
  }
  add_filter("wp_nav_menu_objects","cidw_4w4_filtre_le_menu");
// https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,500&display=swap
// https://svgbox.net/
  ?>