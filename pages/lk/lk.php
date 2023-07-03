<?php 

    session_start();
    include("../../login.php");

?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wedding&Co. - личный кабинет</title>
    <link rel="stylesheet" href="lk.css">
</head>

<body>
    <header>
        <div class="container">
            <nav class="nav">
                <div class="nav__logo">
                    <a href="../../index.php"><img src="icons/logo-white.svg" alt="логотип Wedding&Co."></a>
                </div>
                <div class="nav__items">
                    <a href="../../index.php" class="nav__item">Главная</a>
                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Одежда</button>
                        <div class="nav__subnav-content">
                            <a href="../woman-dresses/woman-dresses.php"class="nav__subnav-item">Свадебные платья</a>
                            <a href="../man-suit/man-suit.php"class="nav__subnav-item">Свадебные костюмы</a>
                        </div>
                    </div>
                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Туфли</button>
                        <div class="nav__subnav-content">
                            <a href="../woman-shoes/woman-shoes.php"class="nav__subnav-item">Женские туфли</a>
                            <a href="../man-shoes/man-shoes.php"class="nav__subnav-item">Мужские туфли</a>
                        </div>
                    </div>
                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Аксессуары</button>
                        <div class="nav__subnav-content">
                            <a href="../woman-accessories/wona-accessories.php"class="nav__subnav-item">Для неё</a>
                            <a href="../man-accessories/man-accessories.php"class="nav__subnav-item">Для него</a>
                        </div>
                    </div>
                        <a href="../floristica/floristica.php" class="nav__item">Флористика</a>
                        <a href="../about/about.php" class="nav__item">О копании</a>
                        <a href="../contacts/contacts.php" class="nav__item">Контакты</a>
                </div>
            </nav>
        </div>
    </header>
    <main>
        <section class="container">

            <img src="img/lk-branch-up.svg"  class="personal__branch-up" alt="">
            <img src="img/lk-branch-down.svg"  class="personal__branch-down" alt="">

            <p class="personal__title">Личный кабинет</p>
                <div class="personal">
                    <div class="personal__item">
                        <p class="personal__item-name">Логин: <?=$_SESSION['login']?></p>
                    </div>
                    <div class="personal__item">
                        <p class="personal__item-name">Почта: <?=$_SESSION['email']?></p>
                    </div>
                    <div class="personal__item">
                        <p class="personal__item-name">Телефон: <?=$_SESSION['phone']?></p>
                    </div>
                    <div class="personal__item-exit">
                        <a href='../../exit.php'><button class="book">Выйти</button></a>
                    </div>
                </div>
        </section>
    </main>

    <footer class="footer">
        <div class="container">
            <div class="footer__flex">
                <div class="footer__contacts">
                    <p class="footer__phone">Телефон: + 7(777) 777-77-77</p>
                    <p class="footer__mail">Почта: weddinghelp@mail.ru</p>
                </div>
                <div class="footer__logo">
                    <a href="index.php"><img src="icons/logo-white.svg" alt="логотип Wedding&Co."></a>
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