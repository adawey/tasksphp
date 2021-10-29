<?php
$tittle = 'register';
include_once 'views/layouts/header.php';
include_once 'views/layouts/nav.php';
include_once 'views/layouts/breadcrump.php';
include_once "app/request/registerRequest.php";
include_once "app/database/models/User.php";
include_once "app/mail/mail.php";


if (isset($_POST['register'])) {
    $registerValidation = new registerRequest;
    $registerValidation->setEmail($_POST['email']);
    $emailValidationResult = $registerValidation->EmailValidation();

    $registerValidation->setPassword($_POST['password']);
    $registerValidation->setConfirmPassword($_POST['confirm_password']);
    $passwordValidationResult = $registerValidation->PasswordValidation();
    if (empty($emailValidationResult) && empty($passwordValidationResult)) {
        //validate email is unique
        $emailCheckExit = $registerValidation->EmailExit();
        //validate phone unique
        $registerValidation->setPhone($_POST['phone']);
        $phoneCheckExit = $registerValidation->PhoneExit();

        //phone_exit: "<div class="alert alert-danger"> phone already exit </div>"
        //email_exit: "<div class="alert alert-danger"> email already exit </div>"
        if (empty($emailCheckExit) && empty($phoneCheckExit)) {
            //insert in database
            $code = rand(10000, 99999);
            $userObject = new User;
            $userObject->setFirst_name($_POST['first_name']);
            $userObject->setLast_name($_POST['last_name']);
            $userObject->setEmail($_POST['email']);
            $userObject->setPhone($_POST['phone']);
            $userObject->setPassword($_POST['password']);
            $userObject->setGender($_POST['gender']);
            $userObject->setCode($code);
            $createResult = $userObject->create();
            if ($createResult) {
                $subject = "Ecommerce-Verification-Code";
                $body = " <p> Hello {$_POST['first_name']} </p>   <p> your Verification code is {$code}</p>";
                $newMail = new mail($_POST['email'], $subject, $body);
                $emailResult = $newMail->sendMail();
                if ($emailResult) {
                    $_SESSION['email'] = $_POST['email'];
                    header('LOCATION:checkcode.php');
                } else {
                    echo 'error';
                }
            } else {
                echo 'error';
                die;
            }
        }
    }
}



if (isset($_POST['register'])) {
}


?>


<div class="login-register-area ptb-100">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-md-12 ml-auto mr-auto">
                <div class="login-register-wrapper">
                    <div class="login-register-tab-list nav">
                        <a class="active" data-toggle="tab" href="#lg2">
                            <h4> register </h4>
                        </a>
                    </div>
                    <div class="tab-content">
                        <div id="lg2" class="tab-pane active">
                            <div class="login-form-container">
                                <div class="login-register-form">
                                    <form method="post">
                                        <input type="text" name="first_name" placeholder="first_name" value="<?php if (isset($_POST['first_name'])) {
                                                                                                                    echo $_POST['first_name'];
                                                                                                                } ?>">
                                        <input type="text" name="last_name" placeholder="last_name" value="<?php if (isset($_POST['last_name'])) {
                                                                                                                echo $_POST['first_name'];
                                                                                                            } ?>">
                                        <input name="email" placeholder="Email" type="email" value="<?php if (isset($_POST['email'])) {
                                                                                                        echo $_POST['email'];
                                                                                                    } ?>">
                                        <?php if (!empty($emailValidationResult)) {
                                            foreach ($emailValidationResult as $key => $value) {
                                                echo $value;
                                            }
                                        }
                                        if (isset($emailCheckExit['email_exit'])) {
                                            echo $emailCheckExit['email_exit'];
                                        }
                                        ?>
                                        <input name="phone" placeholder="phone" type="number" value="<?php if (isset($_POST['phone'])) {
                                                                                                            echo $_POST['phone'];
                                                                                                        } ?>">
                                        <?php
                                        if (isset($phoneCheckExit['phone_exit'])) {
                                            echo $phoneCheckExit['phone_exit'];
                                        }
                                        ?>
                                        <input type="password" name="password" placeholder="Password">
                                        <?php if (isset($passwordValidationResult["password_Required"])) {
                                            echo $passwordValidationResult["password_Required"];
                                        }
                                        if (isset($passwordValidationResult["password_pattern"])) {
                                            echo $passwordValidationResult["password_pattern"];
                                        }
                                        ?>
                                        <input type="password" name="confirm_password" placeholder="Password">
                                        <?php if (isset($passwordValidationResult["confirm_password_Required"])) {
                                            echo $passwordValidationResult["confirm_password_Required"];
                                        }
                                        if (isset($passwordValidationResult["password_similar"])) {
                                            echo $passwordValidationResult["password_similar"];
                                        }

                                        ?>
                                        <select name="gender" class='form-control'>
                                            <option <?php if (isset($_POST['gender']) and $_POST['gender'] == 'm') {
                                                        echo "selected";
                                                    } ?> value="m">male</option>
                                            <option <?php if (isset($_POST['gender']) and $_POST['gender'] == 'f') {
                                                        echo "selected";
                                                    } ?> value="f">female</option>
                                        </select>
                                        <div class="button-box mt-5">
                                            <button name="register" type="submit"><span><?= $tittle ?></span></button>
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


<?php

include_once 'views/layouts/footer.php';

?>