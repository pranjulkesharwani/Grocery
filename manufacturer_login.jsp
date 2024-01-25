<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
        integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="static/css/form.css">
    <link rel="stylesheet" href="fontawesom/css/all.min.css">
</head>

<body>
    <form action="signin.do" method="post">
        <div class="container">
            <div class="box">
                <!-- ----------------Sign in---------------- -->
                <div class="box-signin" id="signin">
                    <div class="top-header">
                        <h3>Hello, Again</h3>
                        <small>We are happy to have you back.</small>
                    </div>
                    <div class="input-group">
                        <div class="input-field">
                            <input type="text" name="email" class="input-box" id="logEmail" required>
                            <label for="logEmail">Email address</label>
                        </div>
                        <div class="input-field">
                            <input type="password" name="password" class="input-box" id="logPassword" required>
                            <label for="logPassword">Password</label>
                            <div class="eye-area">
                                <div class="eye-box" onclick="myLogPassword()">
                                    <i class="fa-regular fa-eye" id="eye"></i>
                                    <i class="fa-regular fa-eye-slash" id="eye-slash"></i>
                                </div>
                            </div>
                        </div>

                        <div class="remember">
                            <input type="checkbox" id="formCheck" class="check">
                            <label for="formCheck">Remember Me</label>
                        </div>
                        <div class="input-field">
                            <input type="submit" class="input-submit" value="Sign In">
                        </div>
                        <div class="input-field">
                            <a href=""><input type="button" class="input-submit" value="Register Now"></a>
                        </div>
                        <div class="forgot">
                            <a href="#">Forgot Password</a>
                            <!-- <button type="button" style="border:none;">Forgot Password</button> -->
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>

</html>