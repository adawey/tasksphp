<?php

session_start();

if (isset($_SESSION)) {
    $_SESSION['familyCount'];
};

if (isset($_POST['second'])) {
    header('Location: page3.php');
};





?>

<!doctype html>
<html lang="en">

<head>
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <div class="row">
            <div class="col-12 col-md-12 mt-5">
                <?php
                if (isset($_SESSION['familyCount'])) {
                    for ($u = 1; $u <= $_SESSION['familyCount']; $u++) { ?>
                        <form method="POST" action="page3.php">
                            <div class="form-group mt-3">
                                <label for="name" style="color: #304ffe;">member <?= $u ?> </label>
                                <input type="text" class="form-control" id="name" name="name<?= $u ?>" aria-describedby="emailHelp">
                            </div>

                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="football<?= $u ?>" value="300">
                                    football (300L.E)
                                </label>
                            </div>

                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="swimming<?= $u ?>" id="" value="250">
                                    swimming (250L.E)
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="volleyball<?= $u ?>" id="" value="150">
                                    volleyball (150L.E)
                                </label>
                            </div>
                            <div class="form-check">
                                <label class="form-check-label">
                                    <input type="checkbox" class="form-check-input" name="others<?= $u ?>" id="" value="100">
                                    others (100L.E)
                                </label>
                            </div>
                    <?php
                    }
                }
                    ?>
                    <button type="submit" name="second" class="btn btn-primary form-control mt-3">Submit</button>
                        </form>

            </div>



        </div>
    </div>



    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>