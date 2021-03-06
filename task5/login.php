<?php
$tittle = 'login';

include_once 'views/layouts/header.php';
include_once 'views/layouts/nav.php';
include_once 'views/layouts/breadcrump.php';
include_once "app/database/models/User.php";
include_once "app/request/registerRequest.php";

if (isset($_POST['login'])) {
    $registerValidation = new registerRequest;
    $registerValidation->setEmail($_POST['email']);
    $emailValidationResult = $registerValidation->EmailValidation();

    $registerValidation->setPassword($_POST['password']);
}
?>
<div class="login-register-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="active" data-toggle="tab" href="#lg1">
                            <h4> login </h4>
                        </a>

                    </div>
                    <div class="tab-content">
                        <div id="lg1" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form action="#" method="post">
                                        <input type="text" name="name" placeholder="Username" value="<?php if (isset($_POST['email'])) {
                                                                                                            echo $_POST['email'];
                                                                                                        } ?>">
                                        <input type="password" name="password" placeholder="Password">
                                        <div class="button-box">
                                            <div class="login-toggle-btn">
                                                <input type="checkbox">
                                                <label>Remember me</label>
                                                <a href="#">Forgot Password?</a>
                                            </div>
                                            <button name="login" type="submit"><span><?= $tittle ?></span></button>
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