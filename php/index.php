<?php

    session_start();
    require_once 'includes/smarty_dir.php';
    require_once SMARTY_INCL_DIR;
    require_once "includes/functions.php";
    defineStrings();
    
    $logged_in = false;
    if (isset($_SESSION["user_id"])) {
        $logged_in = true;
    }

    $smarty = new Smarty;

    $articles = get_all_articles();

    $smarty -> assign('posts', $articles);

    $b_result = get_broadcast();

    $b_name = $b_result[0];
    $b_notes = $b_result[1];
    $smarty -> assign('broadcast', $b_name);
    $smarty -> assign('broadcast_notes', $b_notes);
    $smarty -> assign('logged_in', $logged_in);
    $smarty -> display("index.tpl");
?>