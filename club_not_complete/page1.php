<?php

session_start();

if (isset($_POST['first'])) {
    $_SESSION["name"] = $_POST['name'];
    $_SESSION["familyCount"] = $_POST['familyCount'];
    $_SESSION["price for Now"] =  $_POST['familyCount'] * 2500 + 10000;
    header('Location: page2.php');
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
                <form method="POST">
                    <div class="form-group">
                        <label for="name">name </label>
                        <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
                        <small id="emailHelp" class="form-text text-muted">Club Subscription starts With 10,000L.E</small>
                    </div>
                    <div class="form-group">
                        <label for="familyCount">family Count</label>
                        <input type="number" name="familyCount" class="form-control" id="familyCount" aria-describedby="familyCount">
                        <small id="familyCount" class="form-text text-muted">cost of each member is 2.500 L.E</small>
                    </div>

                    <button type="submit" name="first" class="btn btn-primary form-control">Submit</button>
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