<?php 
require_once("options/apparence.php");

function cidw_4w4_enqueue(){
    //wp_enqueue_style('style_css', get_stylesheet_uri());
    wp_enqueue_style('4w4-le-style', get_template_directory_uri() . '/style.css', array(), filemtime(get_template_directory() . '/style.css'), false);
    wp_register_script('4w4-boite-modale', get_template_directory_uri() . '/js/boite-modale.js', array(), filemtime(get_template_directory() . '/js/boite-modale.js'), true);
    wp_register_script('4w4-carrousel', get_template_directory_uri() . '/js/carrousel.js', array(), filemtime(get_template_directory() . '/js/carrousel.js'), true);

    $listesCategories = array("cours", "jeu", "web","design","video","creation-3d", "utilitaire");
    if ((in_array(get_queried_object() -> slug, $listesCategories)) || (is_front_page())) {
         wp_enqueue_script('4w4-boite-modale');
         wp_enqueue_script('4w4-carrousel');
    }
}

add_action("wp_enqueue_scripts", "cidw_4w4_enqueue");

/* -------------------------------------------------- Enregistré le menu */
function cidw_4w4_register_nav_menu(){
    register_nav_menus( array(
        'menu_principal' => __( 'Menu principal', 'cidw_4w4' ),
        'menu_footer'  => __( 'Menu footer', 'cidw_4w4' ),
        'lien_externe'  => __( 'liens externes', 'cidw_4w4' ),
        'menu_categorie_cours'  => __( 'menu cours', 'cidw_4w4' ),
        'menu_accueil'  => __( 'menu accueil', 'cidw_4w4' ),
        'menu_accueil_evenement'  => __( 'menu Accueil evenement', 'cidw_4w4' ),
        'menu_atelier'  => __( 'menu Atelier', 'cidw_4w4' )
    ) );
}
add_action( 'after_setup_theme', 'cidw_4w4_register_nav_menu', 0 );

/* ---------------------------------------------------------------------- filtré les choix du menu principal */
function cidw_4w4_filtre_choix_menu($obj_menu){
    foreach($obj_menu as $cle => $value)
    {
       $value->title = wp_trim_words($value->title,3,"...");
    }
    return $obj_menu;
}
add_filter("wp_nav_menu_objects","cidw_4w4_filtre_choix_menu");
/****************** - Add Thème support -***************** */
 function cidw_4w4_add_theme_support() {
    add_theme_support('post-thumbnails');
    add_theme_support('custom-logo', array(
        'height' => 100,
        'width' => 100,
    ));
 }
add_action( 'after_setup_theme', 'cidw_4w4_add_theme_support' );
// ------------------------------------ Enregistrement des side bar
add_action( 'widgets_init', 'my_register_sidebars' );
function my_register_sidebars() {
    // entête
    register_sidebar(
        array(
            'id'            => 'entete_1',
            'name'          => __( 'Entete 1' ),
            'description'   => __( 'side bar entete 1' ),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
    // pied de page colonne 1
    register_sidebar(
        array(
            'id'            => 'pied_page_colonne_1',
            'name'          => __( 'Pied de page colonne 1' ),
            'description'   => __( 'Colonne de pied de pages' ),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
    // pied de page colonne 2
    register_sidebar(
        array(
            'id'            => 'pied_page_colonne_2',
            'name'          => __( 'Pied de page colonne 2' ),
            'description'   => __( 'Colonne de pied de pages' ),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
    // pied de page colonne 3
    register_sidebar(
        array(
            'id'            => 'pied_page_colonne_3',
            'name'          => __( 'Pied de page colonne 3' ),
            'description'   => __( 'Colonne de pied de pages' ),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
    // pied de page ligne
    register_sidebar(
        array(
            'id'            => 'pied_page_ligne_1',
            'name'          => __( 'Pied de page ligne 1' ),
            'description'   => __( 'ligne du pied de pages' ),
            'before_widget' => '<div id="%1$s" class="widget %2$s">',
            'after_widget'  => '</div>',
            'before_title'  => '<h3 class="widget-title">',
            'after_title'   => '</h3>',
        )
    );
}

function trouve_la_categorie($tableau){
    foreach($tableau as $cle){
        if(is_category($cle)) return($cle);
    }
}
/* ----------------------------------------------------------- Ajout de la description dans menu */

function prefix_nav_description( $item_output, $item) {
    if (is_front_page()) {
        if ( !empty( $item->description ) ) {
            $item_output = str_replace( '</a>',
            '<hr><span class="menu-item-description">' . $item->description . '</span><div class="menu-item-icone"></div></a>',
                  $item_output );
        }
    }
    return $item_output;
}
add_filter( 'walker_nav_menu_start_el', 'prefix_nav_description', 10, 2 );

/**
 * @param : WP_Query $query
 */
function cidw_4w4_pre_get_posts(WP_Query $query)
{
    if (is_admin()
    || !$query ->is_main_query()
    || !$query ->is_category(array('cours','web','jeu','design','utilitaire','creation-3d','video'))   )
    {
        return $query;
    }        
    else
    {
        $ordre = get_query_var('ordre', 'asc');
        $cle = get_query_var('cletri', 'title');       
        $query->set('order',  $ordre);
        $query->set('orderby', $cle);

        // $query->set('postperpage','-1');
        return $query;
    }
}
function cidw_4w4_query_vars($params){
    $params[] = "cletri";
    $params[] = "ordre";
    //$params["cletri"] = "title";
    //var_dump($params); die();
    return $params;
}
add_action('pre_get_posts', 'cidw_4w4_pre_get_posts');
add_filter('query_vars', 'cidw_4w4_query_vars' );
?>