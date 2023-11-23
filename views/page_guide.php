<div class="container-fluid">
    <a href="/liste-guides">
        <svg xmlns="http://www.w3.org/2000/svg" fill="currentColor" class="bi bi-arrow-left-square-fill arrow-left m-4" viewBox="0 0 16 16">
            <path d="M16 14a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v12zm-4.5-6.5H5.707l2.147-2.146a.5.5 0 1 0-.708-.708l-3 3a.5.5 0 0 0 0 .708l3 3a.5.5 0 0 0 .708-.708L5.707 8.5H11.5a.5.5 0 0 0 0-1z" />
        </svg>
    </a>
    <h1 class="text-center mb-4"><?= $getGuideList->main_title ?></h1>
    <p class="text-center fs-5"><?= $getGuideList->main_text ?></p>
    <div class="row">
        <div class="col d-flex justify-content-center h-50">
            <?php
            FlashMessage::display();
            ?>
        </div>
    </div>
</div>
<div class="container-fluid">
    <div class="row pt-3 justify-content-center align-items-center">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <div class="mb-5">
                <img class="img-fluid" src="/public/uploads/guides/<?= $getGuideList->picture_guides ?>" alt="image donjon">
            </div>
            <p class="fs-5 pb-3">Si vous suivez ce guides, vous n'aurez aucun problème dans votre progression tout au long du jeu</p>
            <p class="fs-5 pb-5"><?= $getGuideList->description ?></p>
            <p class="fs-5 pb-4 pt-2 text-end border-top border-4">Donjon crée par <span id="title-card-white"><?= $_SESSION['username'] ?></span>, dernière modification le <?= date('d-m-Y', strtotime($getGuideList->modified_at)) ?></p>
        </div>       
    </div>
</div>
<img class="img-fluid" src="/public/assets/img/bg3.jpg">
<div class="container-fluid">
    <div class="row pt-3 justify-content-center align-items-center">
        <div class="col-lg-6 col-md-8 col-sm-10">
            <h2 class="mb-5">Commentaires</h2>
            <?php
            foreach ($getGuideCommentarie as $guideCommentarie) {
            ?>
                <div class="d-flex flex-wrap p-2 border-top border-4">
                    <div class="user-info col-sm-10 col-md-4 mb-3 mt-3">
                        <img src="/public/uploads/users/<?= $guideCommentarie->picture ?>" class="img-user-comm img-fluid ms-3" alt="user_image">
                    </div>
                    <div class="comment-text col-sm-10 col-md-8 ml-3 pt-2 pb-2 ">
                        <a class="link-underline link-underline-opacity-0" href="/profil?id_users=<?= $guideCommentarie->id_users ?>">
                            <p class="text-center fs-5" id="title-comm-green"><?= $guideCommentarie->username ?> - <span id="date-comm"><?= date('d-m-Y', strtotime($guideCommentarie->confirmed_at)) ?></span></p>
                        </a>
                        <p><?= $guideCommentarie->text ?></p>
                    </div>
                </div>
            <?php
            }
            ?>
            <form method="post">
                <div class="form-group mt-5 mb-5">
                    <label class="mb-2 fs-5" for="text">Ajouter un commentaire :</label>
                    <textarea class="form-control" id="text" name="text"  maxlength="255" placeholder="Postez votre commentaire ici. (250 caractères max)" rows="3"></textarea>
                    <p class="error"><?= $errors['text'] ?? '' ?></p>
                </div>
                <div class="d-flex justify-content-center mb-5">
                    <button type="submit" class="btn button-green">Envoyer le commentaire</button>
                </div>
            </form>
        </div>
    </div>
</div>