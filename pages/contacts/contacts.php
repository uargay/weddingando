<?php 

    session_start();
    include("../../login.php");

?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wedding&Co. - Контакты</title>
    <link rel="stylesheet" href="contacts.css">
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
        <section class="container">
            <p class="contacts__title">Контакты</p>

            <img src="../contacts/img/contacts-branch.svg" class="contacts__branch-up" alt="">
            <img src="../contacts/img/contacts-bramch2.svg" class="contacts__branch-down" alt="">

            <div class="contacts">
                <div class="contacts__info">
                    <p class="contacts__adress">Адрес:</p>
                    <p class="contacts__text">Москва, Большая Полянка, д.3</p>
                    <p class="contacts__adress">Часы работы:</p>
                    <p class="contacts__text">Ежедневно с 10.00 до 22.00</p>
                </div>
                <div class="contacts__map">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d4851.588188276561!2d37.60997246901984!3d55.741451818897346!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x46b54b00183b30fb%3A0x13f12280ca42ea79!2z0YPQuy4g0JHQvtC70YzRiNCw0Y8g0J_QvtC70Y_QvdC60LAsIDMsINCc0L7RgdC60LLQsCwgMTE5MTgw!5e0!3m2!1sru!2sru!4v1687163807096!5m2!1sru!2sru" width="677" height="490" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>
            <section class="contacts__descr">
                <p class="contacts__warning">Необходима запись на примерку. Записаться можете по телефону:</p>
                <p class="contacts__phone">+7 499 999 99 99</p>
                <p class="contacts__email">info@weddingandcompany.ru</p>
            </section>
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