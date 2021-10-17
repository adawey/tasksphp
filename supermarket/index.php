<?php



if (isset($_POST['count'])) {
    $count = $_POST['count'];
}
function Delivery($city)
{
    $deliveryPrice = 0;
    if ($city == 'cairo') {
        $deliveryPrice += 0;
    } elseif ($city == 'giza') {
        $deliveryPrice += 30;
    } elseif ($city == 'alex') {
        $deliveryPrice += 50;
    } elseif ($city == 'other') {
        $deliveryPrice += 100;
    }
    return $deliveryPrice;
}
if (isset($_POST['bill'])) {
    $subPrice = 0;
    for ($N = 1; $N <= $count; $N++) {
        $subPrice += ($_POST['Quantities' . $N] * $_POST['price' . $N]);
    }
}


function Discount($subPrice)
{
    $discount = 0;
    if ($subPrice < 1000) {
        $discount = 0;
    } elseif ($subPrice < 3000 && $subPrice > 1000) {
        $discount = 0.1;
    } elseif ($subPrice < 4500 && $subPrice > 3000) {
        $discount = 0.15;
    } elseif ($subPrice > 4500) {
        $discount = 0.2;
    }
    return $discount * $subPrice;
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
                                                                                                    } ?>">
            </div>
            <div class="form-group">
                <select name="city" class="form-control">
                    <option <?php if (isset($_POST['city']) && $_POST['city'] == 'cairo') {
                                echo "selected";
                            } ?> value="cairo">cairo</option>
                    <option <?php if (isset($_POST['city'])  && $_POST['city'] == 'giza') {
                                echo "selected";
                            } ?> value="giza">giza</option>
                    <option <?php if (isset($_POST['city'])  && $_POST['city'] == 'alex') {
                                echo "selected";
                            } ?> value="alex">Alex</option>
                    <option <?php if (isset($_POST['city'])  && $_POST['city'] == 'other') {
                                echo "selected";
                            } ?> value="other">other</option>
                </select>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">order </label>
                <input type="number" class="form-control" id="exampleInputPassword1" name="count" value="<?php if (isset($_POST['count'])) {
                                                                                                                echo $_POST['count'];
                                                                                                            } ?>">
            </div>
            <button class="btn btn-primary form-control mb-5 mb-2" name="enter">Submit</button>
            <?php
            if (isset($_POST['enter'])) { ?>
                <section class="sec1">
                    <div>
                        <div>
                            <table class=" table">
                                <thead>
                                    <tr class="tt">
                                        <th>product name</th>
                                        <th scope="col">price</th>
                                        <th scope="col">Quantities</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    for ($i = 1; $i <= $count; $i++) {
                                        echo '
                                            <tr class="tt">
                                            <td> <input class="col-8" type="text"  name="name' . $i . '" id="name">
                                            </td>
                                            <td> <input class="col-8" type="text" name="price' . $i . '" id="price ">
                                            </td>
                                            <td> <input class="col-8" type="text" name="Quantities' . $i . '" id="Quantities"> </td> 
                                        </tr>';
                                    }
                                    ?>
                                </tbody>
                            </table>

                        </div>

                    </div>
                </section>
                <button type="submit" class="btn btn-primary form-control" name="bill" value="form1">Submit</button>
            <?php   } elseif (isset($_POST['bill'])) { ?>
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">ID</th>
                            <th scope="col">Name</th>
                            <th scope="col">price</th>
                            <th scope="col">Quantities</th>
                            <th scope="col">sub total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php

                        if (isset($_POST['bill'])) {
                            for ($N = 1; $N <= $count; $N++) {
                                $sub = $_POST['Quantities' . $N] * $_POST['price' . $N];
                        ?>
                                <tr>
                                    <th scope="row"> <?= $N ?></th>
                                    <td><?= $_POST['name' . $N]; ?></td>
                                    <td><?= $_POST['price' . $N]; ?></td>
                                    <td><?= $_POST['Quantities' . $N]; ?></td>
                                    <td><?= $sub ?></td>


                            <?php
                            }
                        }
                            ?>
                                </tr>
                                <?php if (isset($_POST['bill'])) { ?>
                                    <tr>
                                        <th scope="row"> client Name </th>
                                        <td scope="row"> <?= $_POST['name']; ?> </td>

                                    </tr>
                                    <tr>
                                        <th scope="row"> City </th>
                                        <td scope="row"> <?= $_POST['city']; ?> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"> total </th>
                                        <td scope="row"> <?= $subPrice; ?> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"> total after discount </th>
                                        <td scope="row"> <?= $subPrice - Discount($subPrice); ?> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"> Delevery </th>
                                        <td scope="row"> <?= Delivery($_POST['city']); ?> </td>
                                    </tr>
                                    <tr>
                                        <th scope="row"> Net total </th>
                                        <td scope="row"> <?= ($subPrice - Discount($subPrice)) + Delivery($_POST['city']); ?> </td>
                                    </tr>
                                <?php

                                }  ?>
                    </tbody>
                </table>
            <?php
            } ?>


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