<?php

    if($_POST){
        $num1 = $_POST['number_one'];
        $num2 = $_POST['number_two'];


        if( $_POST['submit']=='sum'){
            $out = $num1 + $num2 ;
            $res = "Addition is" . ' ' . $out ;
        }elseif($_POST['submit']=='min'){
            $out =   $num1 - $num2 ;
            $res = 'subtract is ' . ' ' . $out ;
        }elseif($_POST['submit']=='mult'){
            $out =  $num1 * $num2 ;
            $res = 'multiplication is ' . ' ' . $out ;
        }elseif($_POST['submit']=='div'){
            $out =  $num1 / $num2 ;
            $res = 'Division is ' . ' ' . $out ;
        }elseif($_POST['submit']=='mod'){
            $out =  $num1 % $num2 ;
            $res = 'Modulus is ' . ' ' . $out ;
        }elseif($_POST['submit']=='pow'){
            $out =  $num1 ** $num2 ;
            $res = 'pow is ' . ' ' . $out ;

        }

    }

    // if($_POST){
    //     $num1 = $_POST['number_one'];
    //     $num2 = $_POST['number_two'];
    //     $out = $num1 + $num2 ;
    //     var_dump($_POST);
        
    // }



?>



<!doctype html>
<html lang="en">

<head>
    <title>Calculater</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
    .title {
        background-color: #666;
        margin-top: 50px;
        margin-bottom: 50px;
        text-align: center;
        width: 50%;
        margin-left: auto;
        margin-right: auto;
        border-radius: 10px;
        padding: 15px;
        color: seashell;
    }

    .result {
        margin-top: 50px;
        margin-bottom: 50px;
        text-align: center;
        width: 30%;
        margin-left: auto;
        margin-right: auto;
        border-radius: 10px;
        padding: 20px;
        font-size: 25px;
        color: salmon;
    }

    .mar {
        padding: 0.450rem 0.80rem !important;
        font-weight: 375 !important;
    }

    a {
        text-decoration: none;
        color: white;
        margin: 10px;
        padding: 10px;
        font-size: 16px;
        font-weight: bold;
        line-height: 2;
    }

    a:hover {
        background-color: ivory;
        text-decoration: none;
        border-radius: 5px;
    }
    </style>
</head>






<body>

    <div class='title'>
        <a href="/task1/calculater.php">calculator </a>
        <a href="/task1/unitsCalc.php">unitsCalc </a>
        <a href="/task1/specific_root.php">specific </a>
        <a href="/task1/oddoreven.php">OD or EV </a>
        <a href="/task1/negorpos.php">NIG or PO </a>
        <a href="/task1/gitgrade.php">git marks </a>
        <a href="/task1/calculateMax.php">git max number </a>
    </div>

    <div class="container">
        <div class='title'>
            <h1>Calculator </h1>
        </div>

        <div class="row mt-5">
            <div class="col-6 offset-3 ">
                <form method="post" action="">
                    <div class="form-group ">
                        <label for="Number_One">Number One </label>
                        <input name='number_one' type="number" class="form-control" id="Number_One"
                            aria-describedby="emailHelp">
                        <!-- <small id="num" class="form-text text-muted">We'll never share your email with anyone
                        else.</small> -->
                    </div>
                    <div class="form-group">
                        <label for="Number_two">Number two</label>
                        <input name='number_two' type="number" class="form-control" id="Number_two">
                    </div>
                    <button name="submit" value="sum" type="submit" class="btn btn-primary rounded mar ">
                        Addition</button>
                    <button name="submit" value="min" type="submit" class="btn btn-primary rounded mar ">
                        subtract</button>
                    <button name="submit" value="mult" type="submit"
                        class="btn btn-primary rounded mar">Multiplication</button>
                    <button name="submit" value="div" type="submit"
                        class="btn btn-primary rounded mar ">Division</button>
                    <button name="submit" value="mod" type="submit"
                        class="btn btn-primary rounded mar ">Modulus</button>
                    <button name="submit" value="pow" type="submit" class="btn btn-primary rounded mar ">pow</button>
                </form>
            </div>
        </div>
        <?php if(isset($res)){ echo "<div class='result alert alert-success '> $res </div>"; } ?>


    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous">
    </script>
</body>

</html>