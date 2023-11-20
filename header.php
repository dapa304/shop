        <!--==================== HEADER ====================-->
        <header class="header" id="header">
            <nav class="nav container">

                 <div class="nav__menu" id="nav-menu">

                    <ul class="nav__list">
                        <li>
                        <a href="index.php" class="nav__logo">
                    <i class='bx bxs-shopping-bag nav__logo-icon'></i> DAFT    
                </a>
                        </li>

                        <li class="nav__item">
                            <a href="index.php" class="nav__link">Home</a>
                        </li>
                        <li class="nav__item">
                            <a href="catalog.php" class="nav__link">Catalog</a>
                        </li>
                        
                        <li class="nav__item">
                            <a href="contact.php" class="nav__link">Contact</a>
                        </li>
                    </ul>

                    <div class="nav__close" id="nav-close">
                        <i class='bx bx-x' ></i>
                    </div>
                </div>

                    <div class="nav__btns">

                    <?php
                    session_start();

                    if (isset($_SESSION["username"])) {
                    ?>

                    
                    <div class="nav__shop" id="cart-shop">
                    <i class='bx bx-shopping-bag' ></i>
                    </div>

                    <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bx-grid-alt' ></i>
                    </div>

                    <div class="nav__btns" id="">
                    <a class="menu" href="settings.php"><i class='bx bx-cog' ></i></a>
                    </div>

                    <div class="nav__btns" id="">
                    <a class="menu" href="orders.php"><i class='bx bx-package' ></i></a>
                    </div>

                    <div class="nav__btns" id="">
                    <a class="menu" href="logout.php"><i class='bx bx-log-out' ></i></a>
                    </div>

                    <?php } else { ?>

                                      
                    

                    <div class="nav__toggle" id="nav-toggle">
                    <i class='bx bx-grid-alt' ></i>
                    </div>

                    <div class="nav__btns" id="">
                    <a class="menu" href="login.php"><i class='bx bx-log-in' ></i></a>
                    </div>



                    <?php } ?>

                    </div>
            </nav>
        </header>