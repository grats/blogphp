<?php

    session_start();
    require_once 'includes/smarty_dir.php';
    require_once SMARTY_INCL_DIR;
    require_once "includes/functions.php";

    defineStrings();

    $smarty = new Smarty;

    $b_result = get_broadcast();
    $b_name = $b_result[0];
    $b_notes = $b_result[1];
    $smarty -> assign('broadcast', $b_name);
    $smarty -> assign('broadcast_notes', $b_notes);

    $smarty->display("about.tpl");
?>
