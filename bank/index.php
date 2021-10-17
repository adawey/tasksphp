<?php




if (isset($_POST['enter'])) {

    $year = $_POST['year'];
    ////////////////////////////
    function interest($years)
    {
        if ($years < 3) {
            $Interest  = $_POST['loan'] * 0.1 * $years;
        } elseif ($years > 3) {
            $Interest  = $_POST['loan'] * 0.15 * $years;
        }
        return $Interest;
    }
    ///////////////////////
    $loan_after =  interest($year) + $_POST['loan'];

    //////////////////////////////////
    function monthlyCalc($year, $loan_after)
    {
        $monthCount = $year * 12;
        $monthlyBill = $loan_after / $monthCount;
        return $monthlyBill;
    }
    /////////////////////////
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

    <link href="style.css" rel="stylesheet" type="text/css" />


</head>

<body>

    <div class="container mt-5">

        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" id="myform" method="post">
            <div class="form-group">
                <label for="exampleInputEmail1">Name </label>
                <input type="text" class="form-control" id="exampleInputEmail1" name="name" value="<?php if (isset($_POST['name'])) {
                                                                                                        echo $_POST['name'];
                                                                                                    } ?> ">
            </div>
            <div class="form-group">
                <label for="exampleInputEmail1">loan </label>
                <input type="number" class="form-control" id="exampleInputEmail1" name="loan" value="<?php if (isset($_POST['loan'])) {
                                                                                                            echo $_POST['loan'];
                                                                                                        } ?>">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">year </label>
                <input type="number" class="form-control" id="exampleInputPassword1" name="year" value="<?php if (isset($_POST['year'])) {
                                                                                                            echo $_POST['year'];
                                                                                                        } ?>">
            </div>
            <button class="btn btn-primary form-control mb-5 mb-2" name="enter">Submit</button>

        </form>

        <?php if (isset($_POST['enter'])) { ?>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">interest rate</th>
                        <th scope="col">loan after interest</th>
                        <th scope="col">monthly</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td> <?= interest($year); ?> </td>
                        <td> <?= $loan_after; ?> </td>
                        <td> <?= Round(monthlyCalc($year, $loan_after)); ?> </td>
                    <?php
                }
                    ?>
                    </tr>
                </tbody>
            </table>

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