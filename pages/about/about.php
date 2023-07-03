<?php 

    session_start();
    include("../../login.php");

?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wedding&Co. - О компании</title>
    <link rel="stylesheet" href="about.css">
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
        <div class="container">

            <img src="../about/img/about-branch.svg" class="about__branch" alt="">

            <p class="about__title">Wedding&Co.</p>
            <section class="about__history">
                <div class="about__history-item-photo">
                    <img src="../about/img/Konstantin.svg" alt="Константин Павленко">
                    <div class="about__text">
                        <p class="about__info">Константин Павленко</p>
                    </div>
                </div>
                <div class="about__history-item">
                    <p class="about__history-item-text">Основателем компании “Wedding&Co.” является Константин Павленко. Впервые салон окылся в Москве в 1972 году под названием “Навсегда”. С тех пор произошло много изменений, самое масшабное - полный ребрендинг в 2014 году. Многое менялось, но неизменно одно - наше трепетное отношение клиентам.</p>
                </div>
            </section>
            <section class="container">
                <p class="about__title">Внутренний интерьер:</p>
                <div class="about__interieer">
                    <div class="about__interieer-items">
                        <div class="about__interieer-item"><img src="../about/img/intereer1.svg" alt=""></div>
                        <div class="about__interieer-item"><img src="../about/img/intereer2.svg" alt=""></div>
                    </div>
                    <div class="about__interieer-items">
                        <div class="about__interieer-item"><img src="../about/img/intereer3.svg" alt=""></div>
                        <div class="about__interieer-item"><img src="../about/img/intereer4.svg" alt=""></div>
                    </div>
                </div>
            </section>
        </div>
    </main>
    <footer class="footer">
        <div class="container">
            <div class="footer__flex">
                <div class="footer__contacts">
                    <p class="footer__phone">Телефон: + 7(777) 777-77-77</p>
                    <p class="footer__mail">Почта: weddinghelp@mail.ru</p>
                </div>
                <div class="footer__logo">
                    <a href="../../index.php"><img src="icons/logo-white.svg" alt="логотип Wedding&Co."></a>
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