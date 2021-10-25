<?php
$tittle = 'home';

include_once 'views/layouts/header.php';
include_once 'views/layouts/nav.php';
include_once 'views/layouts/breadcrump.php';
include_once 'app/database/models/Product.php';
include_once 'app/database/models/section2.php';
include_once 'app/database/models/product_order.php';



$most_review = new section2;
$featch_most = $most_review->read();

$one_product = new Product;
$featch_product = $one_product->read();

$most_orders = new product_order;
$fetch_most_order = $most_orders->read();
?>


<!-- Slider Start -->
<div class="slider-area">
    <div class="slider-active owl-dot-style owl-carousel">
        <div class="single-slider ptb-240 bg-img" style="background-image:url(assets/img/slider/slider-1.jpg);">
            <div class="container">
                <div class="slider-content slider-animated-1">
                    <h1 class="animated">Want to stay <span class="theme-color">healthy</span></h1>
                    <h1 class="animated">drink matcha.</h1>
                    <p>Lorem ipsum dolor sit amet, consectetu adipisicing elit sedeiu tempor inci ut labore et dolore magna aliqua.</p>
                </div>
            </div>
        </div>
        <div class="single-slider ptb-240 bg-img" style="background-image:url(assets/img/slider/slider-1-1.jpg);">
            <div class="container">
                <div class="slider-content slider-animated-1">
                    <h1 class="animated">Want to stay <span class="theme-color">healthy</span></h1>
                    <h1 class="animated">drink matcha.</h1>
                    <p>Lorem ipsum dolor sit amet, consectetu adipisicing elit sedeiu tempor inci ut labore et dolore magna aliqua.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Slider End -->
<!-- Product Area Start -->
<div class="product-area bg-image-1 pt-100 pb-95">
    <div class="container">
        <div class="container">
            <div class="product-top-bar section-border mb-55">
                <div class="section-title-wrap text-center">
                    <h3 class="section-title">New Products</h3>
                </div>
            </div>
            <div class="featured-product-active hot-flower owl-carousel product-nav">
                <?php
                if ($featch_product) {
                    $products = $featch_product->fetch_all(MYSQLI_ASSOC);
                    foreach ($products as $index => $product) {  ?>
                        <div class="product-wrapper">
                            <div class="product-img">
                                <a href="product-details.html">
                                    <img alt="" src="assets/img/product/<?= $product['image'] ?>">
                                </a>

                                <div class="product-action">
                                    <a class="action-wishlist" href="#" title="Wishlist">
                                        <i class="ion-android-favorite-outline"></i>
                                    </a>
                                    <a class="action-cart" href="#" title="Add To Cart">
                                        <i class="ion-ios-shuffle-strong"></i>
                                    </a>
                                    <a class="action-compare" href="#" data-target="#exampleModal" data-toggle="modal" title="Quick View">
                                        <i class="ion-ios-search-strong"></i>
                                    </a>
                                </div>
                            </div>
                            <div class="product-content text-left">
                                <div class="product-hover-style">
                                    <div class="product-title">
                                        <h4>
                                            <a href="product-details.html"><?= $product['name_en'] ?></a>
                                        </h4>
                                    </div>
                                    <div class="cart-hover">
                                        <h4><a href="product-details.php?id=<?= $product['id'] ?>">+ Add to cart</a></h4>
                                    </div>
                                </div>
                                <div class="product-price-wrapper">
                                    <span>$<?= $product['price'] ?></span>

                                </div>
                            </div>
                        </div>


                <?php
                    }
                }
                ?>

            </div>
        </div>
    </div>


    <!-- Product Area End -->
    <!-- reviews Start -->
    <div class="product-area bg-image-1 pt-100 pb-95">
        <div class="container">
            <div class="container">
                <div class="product-top-bar section-border mb-55">
                    <div class="section-title-wrap text-center">
                        <h3 class="section-title">most reviews Products</h3>
                    </div>
                </div>
                <div class="featured-product-active hot-flower owl-carousel product-nav">
                    <?php
                    if ($featch_most) {
                        $product_rev = $featch_most->fetch_all(MYSQLI_ASSOC);
                        foreach ($product_rev as $in_order => $order) {
                    ?>
                            <div class="product-wrapper">
                                <div class="product-img">
                                    <a href="product-details.html">
                                        <img alt="" src="assets/img/product/<?= $order['p_image'] ?>">
                                    </a>

                                    <div class="product-action">
                                        <a class="action-wishlist" href="#" title="Wishlist">
                                            <i class="ion-android-favorite-outline"></i>
                                        </a>
                                        <a class="action-cart" href="#" title="Add To Cart">
                                            <i class="ion-ios-shuffle-strong"></i>
                                        </a>
                                        <a class="action-compare" href="#" data-target="#exampleModal" data-toggle="modal" title="Quick View">
                                            <i class="ion-ios-search-strong"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="product-content text-left">
                                    <div class="product-hover-style">
                                        <div class="product-title">
                                            <h4>
                                                <a href="product-details.html"><?= $order['product_name'] ?></a>
                                            </h4>
                                        </div>
                                        <div class="cart-hover">
                                            <h4><a href="product-details.php?id=<?= $order['id'] ?>">+ Add to cart</a></h4>
                                        </div>
                                    </div>
                                    <div class="product-price-wrapper">
                                        <span>$<?= $order['p_p'] ?></span>

                                    </div>
                                </div>
                            </div>

                    <?php
                        }
                    }
                    ?>

                </div>
            </div>
        </div>
        <!-- reviews End -->
        <!-- reviews Start -->
        <div class="product-area bg-image-1 pt-100 pb-95">
            <div class="container">
                <div class="container">
                    <div class="product-top-bar section-border mb-55">
                        <div class="section-title-wrap text-center">
                            <h3 class="section-title">most orders Products</h3>
                        </div>
                    </div>
                    <div class="featured-product-active hot-flower owl-carousel product-nav">
                        <?php
                        if ($fetch_most_order) {
                            $fetch_order = $fetch_most_order->fetch_all(MYSQLI_ASSOC);
                            foreach ($fetch_order as $orders => $quan) {
                        ?>
                                <div class="product-wrapper">
                                    <div class="product-img">
                                        <a href="product-details.html">
                                            <img alt="" src="assets/img/product/<?= $quan['image'] ?>">
                                        </a>

                                        <div class="product-action">
                                            <a class="action-wishlist" href="#" title="Wishlist">
                                                <i class="ion-android-favorite-outline"></i>
                                            </a>
                                            <a class="action-cart" href="#" title="Add To Cart">
                                                <i class="ion-ios-shuffle-strong"></i>
                                            </a>
                                            <a class="action-compare" href="#" data-target="#exampleModal" data-toggle="modal" title="Quick View">
                                                <i class="ion-ios-search-strong"></i>
                                            </a>
                                        </div>
                                    </div>
                                    <div class="product-content text-left">
                                        <div class="product-hover-style">
                                            <div class="product-title">
                                                <h4>
                                                    <a href="product-details.html"><?= $quan['name'] ?></a>
                                                </h4>
                                            </div>
                                            <div class="cart-hover">
                                                <h4><a href="product-details.php?id=<?= $quan['product_id'] ?>">+ Add to cart</a></h4>
                                            </div>
                                        </div>
                                        <div class="product-price-wrapper">
                                            <span>$<?= $quan['price'] ?></span>

                                        </div>
                                    </div>
                                </div>

                        <?php
                            }
                        }
                        ?>

                    </div>
                </div>
            </div>
            <!-- reviews End -->

            <!-- Newsletter Araea Start -->
            <div class="newsletter-area bg-image-2 pt-90 pb-100 mt-5">
                <div class="container">
                    <div class="product-top-bar section-border mb-45">
                        <div class="section-title-wrap text-center">
                            <h3 class="section-title">Join to our Newsletter</h3>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row justify-content-md-center">
                        <div class="col-lg-6 col-md-10 col-md-auto">
                            <div class="footer-newsletter">
                                <div id="mc_embed_signup" class="subscribe-form">
                                    <form action="http://devitems.us11.list-manage.com/subscribe/post?u=6bbb9b6f5827bd842d9640c82&amp;id=05d85f18ef" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
                                        <div id="mc_embed_signup_scroll" class="mc-form">
                                            <input type="email" value="" name="EMAIL" class="email" placeholder="Your Email Address*" required>
                                            <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
                                            <div class="mc-news" aria-hidden="true"><input type="text" name="b_6bbb9b6f5827bd842d9640c82_05d85f18ef" tabindex="-1" value=""></div>
                                            <div class="submit-button">
                                                <input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Newsletter Araea End -->

            <?php

            include_once 'views/layouts/footer.php';

            ?>