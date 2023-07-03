<?php 

    session_start();
    include("../../../login.php");
    include("../../../config/main.php");

    $dress_id = $_GET['dress_id'];

?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wedding&Co.</title>
    <link rel="stylesheet" href="goods.css">
</head>
<body>
    <header>
        <div class="container">
        <nav class="nav">
                <div class="nav__logo">
                    <a href="../../../index.php"><img src="icons/logo-white.svg" alt="логотип Wedding&Co."></a>
                </div>
                <div class="nav__items">
                    <a href="../../../index.php" class="nav__item">Главная</a>
                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Одежда</button>
                        <div class="nav__subnav-content">
                            <a href="../../woman-dresses/woman-dresses.php"class="nav__subnav-item">Свадебные платья</a>
                            <a href="../../man-suit/man-suit.php"class="nav__subnav-item">Свадебные костюмы</a>
                        </div>
                    </div>
                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Туфли</button>
                        <div class="nav__subnav-content">
                            <a href="../../woman-shoes/woman-shoes.php"class="nav__subnav-item">Женские туфли</a>
                            <a href="../../man-shoes/man-shoes.php"class="nav__subnav-item">Мужские туфли</a>
                        </div>
                    </div>
                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Аксессуары</button>
                        <div class="nav__subnav-content">
                            <a href="../../woman-accessories/wona-accessories.php"class="nav__subnav-item">Для неё</a>
                            <a href="../../man-accessories/man-accessories.php"class="nav__subnav-item">Для него</a>
                        </div>
                    </div>
                        <a href="../../floristica/floristica.php" class="nav__item">Флористика</a>
                        <a href="../../about/about.php" class="nav__item">О копании</a>
                        <a href="../../contacts/contacts.php" class="nav__item">Контакты</a>
                    
                    <?php

                            if (!empty($_SESSION['login'])) {
                                echo '<a href="../lk/lk.php"><img src="icons/user.png" class="nav__user"</img></a>';
                            }
                            
                            if (empty($_SESSION['login'])) {
                                echo '<button class="nav__lk"><img class=" start_form nav__user" src="icons/user.png" alt=""></button>';
                            }

                        ?>

                </div>
            </nav>
        </div>
    </header>
    <main>
        <div class="overlay">
            <button class="overlay__btn">x</button>
            <section class="login login-login-form login-active">
                <img src="../../icons/colored-logo.svg" class="login__icon" alt="">
                <h1 class="login__title">Ваша заявка принята!</h1>
                    <form class="login__form" method="GET">
                        <p class="login__main-text">Вы оставили заявку на запись на примерку, нащ сотрудник в ближайщее время свяжется с вами для уточнения деталей</p>
                        <p class="login__if-text">Если у вас остались вопросы звоните или пишите нам на почту:</p>
                        <p class="login__number"> 7 (499) 999-99-99</p>
                        <p class="login__email">info@weddingandcompany.ru</p>
                    </form>
            </section>
        </div>

        <section class="container">

            <img src="img/goods-branch-up.svg" class="goods__branch-up" alt="">
            <img src="img/goods-branch-down.svg" class="goods__branch-down" alt="">
            
                        <?php 

                            $query = "SELECT * FROM `woman_dresses` WHERE `id` = '$dress_id'";
                            $results = mysqli_query($link, $query);
                            while ($row = $results->fetch_assoc()) {
                                echo '
                                    <div class="goods">
                                    <div>
                                        <img src="'.$row["img"].'" class="goods__photo" alt="">
                                    </div>
                                    <div class="goods__info">
                                        <p class="goods__name">'.$row['name'].'</p>
                                        <p class="goods__atricle">Артикль: '.$row['article'].'</p>
                                        <p class="goods__price">'.$row['price'].'</p>
                                        <button class="book start_form">Забронировать</button>
                                    </div>
                                ';
                            }

                        ?>
        </section>

    <footer class="footer">
        <div class="container">
            <div class="footer__flex">
                <div class="footer__contacts">
                    <p class="footer__phone">Телефон: + 7(777) 777-77-77</p>
                    <p class="footer__mail">Почта: weddinghelp@mail.ru</p>
                </div>
                <div class="footer__logo">
                    <a href="../../../index.php"><img src="icons/logo-white.svg" alt="логотип Wedding&Co."></a>
                </div>
                <div class="footer__social">
                    <div class="footer__social-items">
                        <p class="footer__social-title">Социальные сети:</p>
                        <div class="footer__social-items-icons">
                            <img src="icons/vk.svg" alt="ВКонтакте">
                            <img src="icons/telegram.svg" alt="Телеграм">
                            <img src="icons/whatsapp.svg" alt="WhatsApp">
                        </div>
                    </div>        
                </div>
            </div>

        </div>
        <div class="footer__copyright">
            <div class="container">
            <p class="footer__copyright-text">© Все права защищены ООО «Wedding&Co.»</p>
            </div> 
        </div>
    </footer>
    
    <script src="../../script.js"></script>

</body>
</html>