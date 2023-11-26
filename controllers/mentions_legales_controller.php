<?php
require_once __DIR__ . '/../config/init.php';
require_once __DIR__ . '/../config/database.php';

$title = 'DofusUniverse - Mentions légales';

include __DIR__ . '/../views/templates/header.php';
include __DIR__ . '/../mentions_legales.php';
include __DIR__ . '/../views/templates/footer.php';