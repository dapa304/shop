<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!--=============== FAVICON ===============-->
        <link rel="shortcut icon" href="assets/img/favicon.png" type="image/x-icon">

        <!--=============== BOXICONS ===============-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">

        <!--=============== SWIPER CSS ===============--> 
        <link rel="stylesheet" href="assets/css/swiper-bundle.min.css">

        <!--=============== CSS ===============-->
        <link rel="stylesheet" href="assets/css/styles.css">
        <link rel="stylesheet" href="assets/css/catalog.css">
        <link rel="stylesheet" href="assets/css/popup.css">

        <title>DAFT Store | Catalog</title>
    </head>
    <body>

        <!--==================== MAIN ====================-->
        <main class="main">
            <!--==================== PRODUCTS ====================-->
            
                <?php
require_once 'db.php';

 // Retrieve catalog items from the database
$sql = "SELECT * FROM catalog";
$result = mysqli_query($conn, $sql);

// Display catalog items
while ($row = mysqli_fetch_assoc($result)) {

    ?>

                    <div class="product-info">
                                <div class="product-image">
                                    <img src="<?php echo $row['image_url']; ?>" width="400" height="649" alt="<?php echo $row['product_name']; ?>" class="products__img">
                                </div>
                                <div class="product-details">
                                <h1 class="products__title1"><?php echo $row['product_name']; ?></h1>
                                    <p class="product-description">
                                        Stay connected and track your fitness with our sleek smartwatch. 
                                        It features a stunning AMOLED display, heart rate monitoring, and more.
                                    </p>
                                    <div class="product-features">
                                        <h2>Key Features:</h2>
                                        <ul>
                                            <li>
                                                you will look elegant</li>
                                            <li>Heart Rate Monitor</li>
                                            <li>Good Quality</li>
                                            <li>waterproof</li>
                                            <li></li>
                                        </ul>
                                    </div>
                                    <div class="product-price">
                                    <span class="products__price1"><?php echo $row['price']; ?></span>
                                    </div><br>
                                        <a href="catalog.php" class="tombol">← BACK</a>
                                </div>
                            </div>
                    <?php
}

// Close the database connection
mysqli_close($conn);
?>
                </div>
            </section>
        </main>

        <!--=============== SCROLL UP ===============-->
        <a href="#" class="scrollup" id="scroll-up"> 
            <i class='bx bx-up-arrow-alt scrollup__icon' ></i>
        </a>

        <!--=============== SWIPER JS ===============-->
        <script src="assets/js/swiper-bundle.min.js"></script>

        <!--=============== MAIN JS ===============-->
        <script src="assets/js/main.js"></script>
    </body>
</html>
