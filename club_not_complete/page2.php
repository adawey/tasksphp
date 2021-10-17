<?php

session_start();

if (isset($_SESSION)) {
    $_SESSION['familyCount'];
};
if ($_POST['second']) {
    $_SESSION['name'] = $_POST['name'];
};


$sports = ['name', 'football', 'swimming', 'volleyball', 'others'];

function sportsValue($value)
{
    $out = '';
    if ($value == '300') {
        $out = 'football';
    } elseif ($value == '250') {
        $out = 'swimming';
    } elseif ($value == '150') {
        $out = 'volleyball';
    } elseif ($value == '100') {
        $out = 'other';
    }
    return $out;
}



function coastForOnePerson()
{
    $sports = ['name', 'football', 'swimming', 'volleyball', 'others'];

    if ($_POST) {
        for ($u = 1; $u <= $_SESSION['familyCount']; $u++) {
            $coastF = null;
            for ($p = 1; $p <= count($sports) - 1; $p++) {
                if (isset($_POST[$sports[$p] . $u])) {
                    $coastF  += $_POST[$sports[$p] . $u];
                }
            }
            echo 'this person ' . $_POST[$sports[0] . $u];
            echo ' coast a ' . $coastF . '<br>';
        }
    }
}


///////////////////////

$spor = ['football', 'swimming', 'volleyball', 'others'];
$price = 0;
if ($_POST) {
    $footballScore = null;
    $swimScore = null;
    $volleyScore = null;
    $otherScore = null;
    for ($e = 0; $e <= count($spor) - 1; $e++) {
        global $footballScore;
        global $swimScore;
        global $volleyScore;
        global $otherScore;
        for ($N = 1; $N <= $_SESSION['familyCount']; $N++) {
            if (isset($_POST[$spor[$e] . $N])) {
                if ($_POST[$spor[$e] . $N] == '300') {
                    $footballScore += 1;
                } elseif ($_POST[$spor[$e] . $N] == '250') {
                    $swimScore += 1;
                } elseif ($_POST[$spor[$e] . $N] == '150') {
                    $volleyScore += 1;
                } elseif ($_POST[$spor[$e] . $N] == '100') {
                    $otherScore += 1;
                }
            }
        }
    }
}





// coast for one gameClub  
function test()
{
    $ty = 5;
    $tt = 10;
    $tu = $ty + $tt;
    return $tu;
}
test();

$_SESSION['value'] = test();

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
                        <form method="POST">
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
            <?php
            if ($_POST) {
            ?>
                <div class="col-12 col-md-12 mt-5">
                    <table class="table">
                        <thead>
                            <tr>
                                <th scope="col"> names </th>

                                <th colspan="5"><?= $_SESSION['name'] ?></th>
                                <th>coast </th>

                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            for ($u = 1; $u <= $_SESSION['familyCount']; $u++) { ?>
                                <tr>
                                    <th scope="row"> <?php $_SESSION['names'] =  $_POST[$sports[0] . $u];
                                                        echo $_POST[$sports[0] . $u] ?> </th>
                                    <td>
                                        <?php
                                        for ($p = 0; $p <= count($sports) - 1; $p++) {
                                            if (isset($_POST[$sports[$p] . $u])) {
                                                $_SESSION['sports'] = sportsValue($_POST[$sports[$p] . $u]); ?>
                                    </td>
                                    <?php
                                                for ($p = 0; $p <= count($sports) - 1; $p++) {
                                    ?> <td> <?php
                                                    if (isset($_POST[$sports[$p] . $u])) {
                                                        echo sportsValue($_POST[$sports[$p] . $u]); ?>
                                        </td>
                                <?php
                                                    }
                                                }
                                ?>
                                <td><?= $footballScore * 300; ?></td>

                                </tr>
                <?php
                                            }
                                        }
                                    }
                                }
                ?>


                        </tbody>
                    </table>

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