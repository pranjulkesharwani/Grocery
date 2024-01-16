<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="static/css/form.css">
</head>

<body>

    <form action="register.do" method="post">
        <div class="container">
            <div class="box">
                <!-- ----------------Sign in---------------- -->
                <div class="box-signin" id="signin">
                    <div class="top-header">
                        <h3>Register, Now</h3>
                        <small>We are happy to have you with us.</small>
                    </div>
                    <div class="input-group">
                        <div class="input-field">
                            <input type="text" name="name" class="input-box" id="name" required>
                            <label for="name">Your Name</label>
                        </div>
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
                            <input type="submit" class="input-submit" value="Sign Up">
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