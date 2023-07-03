<?php
    session_start();
    include ("config/main.php");

    $errmessage = '';
    $err = '';

    if(!empty($_SESSION['login'])){

    }

// Авторизация

    if(!empty($_POST['log'])) {

        $user = $_POST['user'];
        $pass = md5($_POST['pass']);
        $query = "SELECT `id`, `login`,`password`, `email`, `role`, `phone` FROM `users` WHERE `login`='$user' AND `password`='$pass'";
        $result = mysqli_query($link, $query);

        if(mysqli_num_rows($result)>0) {

            $result = mysqli_query($link, $query) or die (mysqli_error($link));

            while ($row = $result->fetch_assoc()) {

                $_SESSION['idUser'] = $row['id'];
                $_SESSION['login'] = $row['login'];
                $_SESSION['email'] = $row['email'];
                $_SESSION['role'] = $row['role'];
                $_SESSION['phone'] = $row['phone'];
            }

        } else {

            $errmessage = '<p class="login__errmessage">Логин или пароль неверный</p>';
        }
    }


    if(!empty($_SESSION['login'])){

    }

// Регистрация
    if (!empty($_POST['login'])) {

        $email = $_POST['email'];
        $user = $_POST['user'];
        $pass = md5($_POST['pass']);
        $phone = $_POST['phone'];

        $loginCheck = false;

        $query = mysqli_query($link, ("SELECT *  FROM `users` WHERE `login` = '". $user . "'"));
            if($query -> num_rows > 0)
            {
                $err = '<p class="login__errmessage">Такой логин уже используется</p>';
            }
            else {
                $loginCheck = true;
            }
        
        if ($loginCheck === true) {

            mysqli_query($link, "INSERT INTO `users`(`login`, `password`, `email`, `phone`, `role`) VALUES ('$user','$pass','$email','$phone','0')") or die (mysqli_error($link));
        }
    }

?>

        <!-- Окно авторизации -->

        <div class="overlay">
            <button class="overlay__btn">x</button>
            <section class="login login-login-form login-active">
                <img src="icons/colored-logo.svg" class="login__icon" alt="">
                <h1 class="login__title">Авторизация</h1>
                <form class="login__form" method="POST">
                    <p class="login__text">Логин (Имя):</p>
                    <input class="login__input" id="name" type="text" name="user" required>
        
                    <p class="login__text">Пароль:</p>
                    <input class="login__input" type="password" name="pass" required>
                        <?=$errmessage?>
                    <input class="login__btn" type="submit" name="log" value="Войти">
                    <button class="login__reg login-reg-btn1" type="button">Нет аккаунта? Зарегестируйтесь</button>
                </form>
            </section>
    
            <!-- Окно регистрации -->

            <section class="login login-reg-form">
                <img src="icons/colored-logo.svg" class="login__icon" alt="">
                <h1 class="login__title">Регистрация</h1>
                <form class="login__form" method="POST">
                    <p class="login__text">Логин (Имя):</p>
                    <input class="login__input" id="user" type="text" name="user" required>
                        <?=$err?>
                    <p class="login__text">Телефон:</p>
                    <input placeholder="+7 (___) ___ __ __" class="login__input-phone" id="phone" type="text" name="phone" required>
    
                    <p class="login__text">Email:</p>
                    <input class="login__input" id="email" type="email" name="email" required>

                    <p class="login__text">Пароль:</p>
                    <input class="login__input" id="pass" type="password" minlength="6" name="pass" required>

                    <input class="login__btn" id="login" type="submit" name="login" value="Создать аккаунт">
                    
                    <button class="login__reg login-reg-btn2" type="button">Уже зарегестритованы? Авторизируйтесь</button>
                    </form>
            </section>
        </div>
