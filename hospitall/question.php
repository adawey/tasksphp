<?php
session_start();
if (isset($_POST['result'])) {
    $_SESSION['option1'] = $_POST['option1'];
    $_SESSION['option2'] = $_POST['option2'];
    $_SESSION['option3'] = $_POST['option3'];
    $_SESSION['option4'] = $_POST['option4'];
    $_SESSION['option5'] = $_POST['option5'];
    header('location:result.php');
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
    <link rel="stylesheet" href="mystyle.css" type="css/text" />

</head>

<body>
    <div class="container mt-5">
        <div class="row mt-5">
            <div col-6 offset-3>
                <form method="post">
                    <table class="table">
                        <thead>
                            <tr>
                                <th colspan="6"> Questions? </th>
                                <th scope="col"> bad </th>
                                <th scope="col"> good </th>
                                <th scope="col"> very good </th>
                                <th scope="col"> excellent </th>
                            </tr>
                        </thead>
                        <tbody>

                            <tr>
                                <td scope="row" colspan="6" class="mr-2">are you satisfied with the level of cleanliness? </td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option1" value="0"></td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option1" value="3"></td>
                                <td class="ml-5"> <input class="form-check-input ml-3" type="radio" name="option1" value="5"></td>
                                <td class="ml-5"> <input class="form-check-input ml-4" type="radio" name="option1" value="10"></td>
                            </tr>
                            <tr>
                                <td scope="row" colspan="6" class="mr-2">are you satisfied with the service price ?</td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option2" value="0"></td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option2" value="3"></td>
                                <td class="ml-5"> <input class="form-check-input ml-3" type="radio" name="option2" value="5"></td>
                                <td class="ml-5"> <input class="form-check-input ml-4" type="radio" name="option2" value="10"></td>
                            </tr>
                            <tr>
                                <td scope="row" colspan="6" class="mr-2"> are you satisfied with the nursing service ?</td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option3" value="0"></td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option3" value="3"></td>
                                <td class="ml-5"> <input class="form-check-input ml-3" type="radio" name="option3" value="5"></td>
                                <td class="ml-5"> <input class="form-check-input ml-4" type="radio" name="option3" value="10"></td>
                            </tr>
                            <tr>
                                <td scope="row" colspan="6" class="mr-2"> are you satisfied with the level of the doctor ?</td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option4" value="0"></td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option4" value="3"></td>
                                <td class="ml-5"> <input class="form-check-input ml-3" type="radio" name="option4" value="5"></td>
                                <td class="ml-5"> <input class="form-check-input ml-4" type="radio" name="option4" value="10"></td>
                            </tr>
                            <tr>
                                <td scope="row" colspan="6" class="mr-2"> are you satisfied with the calmness in the hospital ?</td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option5" value="0"></td>
                                <td class="ml-5"> <input class="form-check-input ml-2" type="radio" name="option5" value="3"></td>
                                <td class="ml-5"> <input class="form-check-input ml-3" type="radio" name="option5" value="5"></td>
                                <td class="ml-5"> <input class="form-check-input ml-4" type="radio" name="option5" value="10"></td>
                            </tr>
                        </tbody>
                    </table>
                    <button type="submit" name="result" class="btn btn-primary form-control"> submit </button>
                </form>
            </div>

        </div>

    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>