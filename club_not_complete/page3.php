<?php

session_start();

if (isset($_SESSION)) {
    echo $_SESSION['value'];
};


// $sports = ['name', 'football', 'swimming', 'volleyball', 'others'];

// function sportsValue($value)
// {
//     $out = '';
//     if ($value == '300') {
//         $out = 'football';
//     } elseif ($value == '250') {
//         $out = 'swimming';
//     } elseif ($value == '150') {
//         $out = 'volleyball';
//     } elseif ($value == '100') {
//         $out = 'other';
//     }
//     return $out;
// }

// function coastForOnePerson()
// {
//     $sports = ['name', 'football', 'swimming', 'volleyball', 'others'];

//     if ($_POST) {
//         for ($u = 1; $u <= $_SESSION['familyCount']; $u++) {
//             $coastF = null;
//             for ($p = 1; $p <= count($sports) - 1; $p++) {
//                 if (isset($_POST[$sports[$p] . $u])) {
//                     $coastF  += $_POST[$sports[$p] . $u];
//                 }
//             }
//             echo 'this person ' . $_POST[$sports[0] . $u];
//             echo ' coast a ' . $coastF . '<br>';
//         }
//     }
// }


// ///////////////////////

// $spor = ['football', 'swimming', 'volleyball', 'others'];
// $price = 0;
// if ($_POST) {
//     $footballScore = null;
//     $swimScore = null;
//     $volleyScore = null;
//     $otherScore = null;
//     for ($e = 0; $e <= count($spor) - 1; $e++) {
//         global $footballScore;
//         global $swimScore;
//         global $volleyScore;
//         global $otherScore;
//         for ($N = 1; $N <= $_SESSION['familyCount']; $N++) {
//             if (isset($_POST[$spor[$e] . $N])) {
//                 if ($_POST[$spor[$e] . $N] == '300') {
//                     $footballScore += 1;
//                 } elseif ($_POST[$spor[$e] . $N] == '250') {
//                     $swimScore += 1;
//                 } elseif ($_POST[$spor[$e] . $N] == '150') {
//                     $volleyScore += 1;
//                 } elseif ($_POST[$spor[$e] . $N] == '100') {
//                     $otherScore += 1;
//                 }
//             }
//         }
//     }
// }





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

                <table class="table table-striped table-inverse">
                    <thead class="thead-inverse">
                        <tr>
                            <th scope="col">names</th>
                            <th colspan='3'><?= $_SESSION['name'] ?></th>
                            <th>ff3</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                        for ($u = 1; $u <= $_SESSION['familyCount']; $u++) { ?>
                            <tr>
                                <td scope="row"> <?= $u; ?></td>
                                <td><?= $_SESSION['sports']; ?></td>
                                <td><?php $_SESSION['name' . $u]; ?></td>


                            </tr>
                        <?php } ?>

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