<?php

session_start();

if (isset($_SESSION)) {
    $_SESSION['familyCount'];
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
            return $coastF;
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

function coastForAll()
{
    $sports = ['name', 'football', 'swimming', 'volleyball', 'others'];

    if ($_POST) {
        global $coastForAll;
        for ($u = 1; $u <= $_SESSION['familyCount']; $u++) {
            $coastF = null;
            for ($p = 1; $p <= count($sports) - 1; $p++) {
                if (isset($_POST[$sports[$p] . $u])) {
                    $coastF  += $_POST[$sports[$p] . $u];
                }
            }
            $coastForAll += $coastF;
        }
    }
    $first = ($_SESSION['familyCount'] * 2500) + 10000;
    echo $first + $coastForAll;
}




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
                if ($_POST) {
                ?>
                    <table class="table table-striped table-inverse">
                        <thead class="thead-inverse">
                            <tr>
                                <th scope="col">names</th>
                                <th scope="col"><?= $_SESSION['name'] ?></th>
                                <th colspan="5">sports</th>
                                <th colspan="5">coast</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                            for ($u = 1; $u <= $_SESSION['familyCount']; $u++) { ?>
                                <tr>
                                    <td scope="row"> <?= $u; ?></td>
                                    <td><?php if (isset($_POST[$sports[0] . $u])) {
                                            echo $_POST[$sports[0] . $u] ?>
                                    </td>
                                    <?php
                                            for ($p = 0; $p <= count($sports) - 1; $p++) { ?>
                                        <td><?php if (isset($_POST[$sports[$p] . $u])) {
                                                    echo sportsValue($_POST[$sports[$p] . $u]); ?>
                                        </td>
                                <?php
                                                }
                                            }
                                ?>
                                <td>
                                    <?= coastForOnePerson() ?>
                                </td>
                                </tr>
                            <?php
                                        } ?>

                        <?php
                            } ?>
                        <tr>
                            <td colspan="9"> coast by Details</td>
                        </tr>
                        <tr>
                            <td colspan="7"> <?= $_SESSION['name'] ?> </td>
                            <td> 10.000</td>
                        </tr>

                        <tr>
                            <td colspan="7">football </td>
                            <td> <?= $footballScore * 300; ?> </td>
                        </tr>
                        <tr>
                            <td colspan="7">swimming </td>
                            <td> <?= $swimScore * 250; ?> </td>
                        </tr>
                        <tr>
                            <td colspan="7">volleyball </td>
                            <td> <?= $volleyScore * 150; ?> </td>
                        </tr>
                        <tr>
                            <td colspan="7">other </td>
                            <td> <?= $otherScore * 100; ?> </td>
                        </tr>

                        <tr>
                            <td colspan="7">coastForAll </td>
                            <td> <?= coastForAll(); ?> </td>
                        </tr>
                        </tbody>
                    </table>
                <?php
                }
                ?>

            </div>
        </div>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>