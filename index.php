<?php 
    session_start();
    include("login.php");

?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wedding&Co. - свадебный салон</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
    <header> 
        <div class="container">
            <nav class="nav">
                <div class="nav__logo">
                    <img src="icons/logo-white.svg" alt="логотип Wedding&Co.">
                </div>
                <div class="nav__items">
                    <a href="#" class="nav__item">Главная</a>

                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Одежда</button>
                        <div class="nav__subnav-content">
                            <a href="pages/woman-dresses/woman-dresses.php" class="nav__subnav-item">Свадебные платья</a>
                            <a href="pages/man-suit/man-suit.php" class="nav__subnav-item">Свадебные костюмы</a>
                        </div>
                    </div>

                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Туфли</button>
                        <div class="nav__subnav-content">
                            <a href="pages/woman-shoes/woman-shoes.php" class="nav__subnav-item">Женские туфли</a>
                            <a href="pages/man-shoes/man-shoes.php" class="nav__subnav-item">Мужские туфли</a>
                        </div>
                    </div>

                    <div class="nav__subnav">
                        <button class="nav__subnav-btn">Аксессуары</button>
                        <div class="nav__subnav-content">
                            <a href="pages/man-accessories/man-accessories.php" class="nav__subnav-item">Для него</a>
                            <a href="pages/woman-accessories/wona-accessories.php" class="nav__subnav-item">Для неё</a>
                        </div>
                    </div>

                    <a href="pages/floristica/floristica.php" class="nav__item">Флористика</a>
                    <a href="pages/about/about.php" class="nav__item">О копании</a>
                    <a href="pages/contacts/contacts.php" class="nav__item">Контакты</a>

                        <?php

                            if (!empty($_SESSION['login'])) {
                                echo '<a href="pages/lk/lk.php"><img src="icons/user.png" class="nav__user"</img></a>';
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
            <section class="about">
                <div class="about__photo">
                    <img src="img/about-photo.svg" class="about__img" alt="Немного компании Wedding&Co.">
                </div>
                <div class="about__info">
                    <p class="about__title">Свадьба -</p>
                    <p class="about__text">важный и трепертный этап взролсения отношений двух любящих дргу друга людей. Наша компания Wedding&Co. поможет вам огранизовать чувственную и нежную церемонию</p>
                    <button class="book start_form">Записаться на примерку</button>
                </div>
            </section>
        </div>
        <div class="container">

            <img src="icons/branch-top-left.png" class="branch-top-left" alt="">
            <img src="icons/branch-top-right.png" class="branch-top-right" alt="">
            <img src="icons/branch-bottom-left.png" class="branch-bottom-left" alt="">
            <img src="icons/branch-bottom-right.png" class="branch-bottom-right" alt="">

            <section class="popular">
                <p class="popular__title">Популярные товары:</p>
                <div class="popular__items">
                    <div class="popular__item">
                        <img src="pages/woman-dresses/img/d5.svg" class="popular__img" alt="Популярные платья">
                        <div class="popular__text">
                            <p class="popular__info">Сверкающее свадебное платье без лямок “Розмари”</p>
                            <p class="popular__info">арт.389994</p>
                            <p class="popular__info">179 000 р.</p>
                        </div>
                    </div>
                    <div class="popular__item">
                        <img src="pages/man-suit/img/ms4.svg" class="popular__img" alt="Популярные платья">
                        <div class="popular__text">
                            <p class="popular__info">Свадебный костюм с нагрудным карманом “Солли”</p>
                            <p class="popular__info">арт.748104</p>
                            <p class="popular__info">35 000 р.</p>
                        </div>
                    </div>
                    <div class="popular__item">
                        <img src="pages/floristica/img/f2.svg" class="popular__img" alt="Популярные платья">
                        <div class="popular__text">
                            <p class="popular__info">Букет из пионов</p>
                            <p class="popular__info">арт.204710</p>
                            <p class="popular__info">12 000 р.</p>
                        </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="container">
            <section class="why">
                <p class="why__title">Почему мы?</p>
                <div class="why__items">
                    <div class="why__item">
                        <img src="img/Elena_Kirichenko.svg" class="why__photo" alt="Генеральный директор Wedding&Co. Елена Кириченко">
                    </div>
                    <div class="why__item">
                        <p class="why__text">“Уже много лет мы создаём прекрасное для вас. Ежегодно тысячи счастливых молодожён благодарны нам - и эту благодарность мы ценим”</p>
                        <p class="why__name">Елена Кириченко</p>
                        <p class="why__speciality">Генеральный директор компании “Wedding&Co. ”</p>
                    </div>
                </div>
            </section>
        </div>

        <div class="container">
            <section class="rewiews">
                <p class="rewiews__title">Отзывы</p>
                    <div class="rewiews__arrows">
                        <button class="rewiews__left"><</button>
                        <button class="rewiews__right">></button>
                    </div>
                <div class="rewiews__slider">
                    <ul class="rewiews__list">
                        <li class="rewiews__item">
                            <div class="rewiews__box">
                                <p class="rewiews__item-name">Елена</p>
                                <p class="rewiews__item-text">Прекрасный салон! Сделали всё быстро и качественно. Персонал очень любезный и понимающий, оперативно реагировали на вопросы и помогали. Спасибо за свадьбу!</p>
                                <p class="rewiews__item-date">12.02.12</p>
                            </div>
                        </li>
                        <li class="rewiews__item">
                            <div class="rewiews__box">
                                <p class="rewiews__item-name">Ольга</p>
                                <p class="rewiews__item-text">Прекрасный салон! Сделали всё быстро и качественно. Персонал очень любезный и понимающий, оперативно реагировали на вопросы и помогали. Спасибо за свадьбу!</p>
                                <p class="rewiews__item-date">12.02.12</p>
                            </div>
                        </li>
                        <li class="rewiews__item">
                            <div class="rewiews__box">
                                <p class="rewiews__item-name">Дарья</p>
                                <p class="rewiews__item-text">Прекрасный салон! Сделали всё быстро и качественно. Персонал очень любезный и понимающий, оперативно реагировали на вопросы и помогали. Спасибо за свадьбу!</p>
                                <p class="rewiews__item-date">12.02.12</p>
                            </div>
                        </li>
                        <li class="rewiews__item">
                            <div class="rewiews__box">
                                <p class="rewiews__item-name">Елена</p>
                                <p class="rewiews__item-text">Прекрасный салон! Сделали всё быстро и качественно. Персонал очень любезный и понимающий, оперативно реагировали на вопросы и помогали. Спасибо за свадьбу!</p>
                                <p class="rewiews__item-date">12.02.12</p>
                            </div>
                        </li>
                        <li class="rewiews__item">
                            <div class="rewiews__box">
                                <p class="rewiews__item-name">Ольга</p>
                                <p class="rewiews__item-text">Прекрасный салон! Сделали всё быстро и качественно. Персонал очень любезный и понимающий, оперативно реагировали на вопросы и помогали. Спасибо за свадьбу!</p>
                                <p class="rewiews__item-date">12.02.12</p>
                            </div>
                        </li>
                        <li class="rewiews__item">
                            <div class="rewiews__box">
                                <p class="rewiews__item-name">Дарья</p>
                                <p class="rewiews__item-text">Прекрасный салон! Сделали всё быстро и качественно. Персонал очень любезный и понимающий, оперативно реагировали на вопросы и помогали. Спасибо за свадьбу!</p>
                                <p class="rewiews__item-date">12.02.12</p>
                            </div>
                        </li>
                    </ul>
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

    <script src="script.js"></script>

</body>
</html>