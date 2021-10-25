<?php


$tittle = 'ckeck code';

include_once 'views/layouts/header.php';
include_once 'views/layouts/nav.php';
include_once 'views/layouts/breadcrump.php';
include_once "app/database/models/User.php";
include_once "app/request/checkCodeRequest.php";


if (isset($_POST['check_code'])) {
    $errors = [];
    $checkCodeResult = new CheckCodeRequest;
    $checkCodeResult->setCode($_POST['code']);
    $finalCheck = $checkCodeResult->CodeValidation();
    if (empty($finalCheck)) {
        $userData = new User;
        $userData->setCode($_POST['code']);
        $userData->setEmail($_SESSION['email']);
        $resultUser = $userData->CheckCode();
        if ($resultUser) {
            // update status
            $userData->setStatus(1);
            $userData->setVerified_at(date("Y-m-d H:i:s"));
            $verifyUser = $userData->verifyUser();
            if ($verifyUser) {
                header('Location:login.php');
            } else {
                $errors['server_error'] = "<div class='alert alert-danger' > some thing wrong </div>";
            }
        } else {
            $errors['code_error'] = "<div class='alert alert-danger' > code is wrong  </div>";
        }
    }
}

?>
<div class="login-register-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="active" data-toggle="tab" href="#lg1">
                            <h4> ckeck code </h4>
                        </a>

                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form action="#" method="post">
                                        <input type="number" name="code" placeholder="code">
                                        <?php
                                        if (!empty($finalCheck)) {
                                            foreach ($finalCheck as $key => $value) {
                                                echo $value;
                                            }
                                        }

                                        if (isset($errors)) {
                                            foreach ($errors as $key => $value) {
                                                echo $value;
                                            }
                                        }

                                        ?>
                                        <div class="button-box">
                                            <button name="check_code" type="code"><span><?= $tittle ?></span></button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</div>
</div>



<?php

include_once 'views/layouts/footer.php';

?>