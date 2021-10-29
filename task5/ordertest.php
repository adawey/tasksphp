<?php


$tittle = 'ckeck code';

include_once 'views/layouts/header.php';
include_once 'views/layouts/nav.php';
include_once 'views/layouts/breadcrump.php';
include_once "app/database/models/User.php";
include_once "app/request/checkCodeRequest.php";




?>

<div class="container">
    <div class="row">
        <table class="table">
            <?php
            $users = ['ahmed', 'mohammed', 'gamal', 'hassan'];
            $user1 = ['order1', 'order2', 'order3', 'order4', 'order7'];
            $user2 = ['order1', 'order2', 'order3', 'order4', 'order7'];
            $user3 = ['order1', 'order2', 'order3', 'order4', 'order7'];
            $user4 = ['order4', 'order5', 'order6', 'order7', 'order7'];
            $ordercount1 = 2;
            ?>
            <thead>
                <tr>
                    <th scope="col">user id </th>
                    <th scope="col">name</th>
                    <th scope="col">order1</th>
                    <th scope="col">order2</th>
                    <th scope="col">order3</th>
                    <th scope="col">order4</th>
                    <th scope="col">order4</th>
                    <th scope="col">action</th>
                </tr>
            </thead>
            <tbody>
                <?php
                for ($n = 0; $n <= 3; $n++) { ?>
                    <tr>
                        <td colspan="" rowspan="<?php echo $ordercount1 + 1 ?>" scope="row"><?= $n ?></td>
                        <td rowspan="<?php echo $ordercount1 + 1 ?>"><?= $users[$n] ?></td>

                    </tr>
                    <?php for ($i = 0; $i < $ordercount1; $i++) { ?>
                        <tr>
                            <?php for ($t = 0; $t < 5; $t++) { ?>
                                <td> <?= $user4[$t] . $i; ?></td>
                            <?php
                            } ?>
                            <?php
                            if ($i == 0) { ?>
                                <td>
                                    <a href="hh" class='btn btn-danger'> edit </a>
                                    <a href="hh" class='btn btn-danger'> delete </a>
                                    <a href="hh" class='btn btn-danger'> rr </a>
                                </td>
                            <?php }  ?>

                        </tr>

                    <?php
                    };
                    ?>

                <?php
                };
                ?>
            </tbody>
        </table>
    </div>
</div>





<?php

include_once 'views/layouts/footer.php';

?>