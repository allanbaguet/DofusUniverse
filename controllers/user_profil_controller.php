<?php 
require_once __DIR__ . '/../config/database.php';
require_once __DIR__ . '/../models/User.php';
require_once __DIR__ . '/../models/Commentarie.php';
require_once __DIR__ . '/../config/init.php';

try {
    $title = 'DofusUniverse - Profil';
    // $id_users = intval(filter_input(INPUT_GET, 'id_users', FILTER_SANITIZE_NUMBER_INT));
    //pour appelé la méthode static -> appel de la classe avec :: nom de la fonction
    $id_dungeons = intval(filter_input(INPUT_GET, 'id_dungeons', FILTER_SANITIZE_NUMBER_INT));
    $id_guides = intval(filter_input(INPUT_GET, 'id_guides', FILTER_SANITIZE_NUMBER_INT));
    $getUsersList = User::get_all();
    $getCommentarieGuide = Commentarie::getGuideComments($id_guides);
    $getCommentarieDungeon = Commentarie::getDungeonComments($id_dungeons);
    // $getUsersInfo = User::get($id_users);
    //variable qui appel la classe et sa méthode -> récupére les éléments archivé
} catch (\Throwable $th) {
    $error = $th->getMessage();
    include __DIR__ . '/../views/templates/header.php';
    include __DIR__ . '/../views/templates/error.php';
    include __DIR__ . '/../views/templates/footer.php';
    die;
}





include __DIR__ . '/../views/templates/header.php';
include __DIR__ . '/../views/user_profil.php';
include __DIR__ . '/../views/templates/footer.php';