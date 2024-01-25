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
                            <a href="signup.do"><input type="button" class="input-submit" value="Sign Up"></a>
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
<!-- --------------- Switch --------------------------------- -->
<!-- 
                <div class="switch">
                    <a href="#" class="login" onclick="login()">Signin</a>
                    <a href="#" class="register" onclick="register()">Signup</a>
                    <div class="btn-active" id="btn"></div>
                </div>
            </div>
        </div>
    </form>

    <script>
        var x = document.getElementById('login');
        var y = document.getElementById('register');
        var z = document.getElementById('btn');

        function login() {
            x.style.left = "27px";
            y.style.right = "-350px";
            z.style.left = "0px";
        }
        function register() {
            x.style.left = "-350px";
            y.style.right = "25px";
            z.style.left = "150px";
        }

        function myLogPassword() {
            var a = document.getElementById('logPassword');
            var b = document.getElementById('eye');
            var c = document.getElementById('eye-slash');

            if (a.type === "password") {
                a.type = "text"
                b.style.opacity = "0";
                c.style.opacity = "1";
            } else {
                a.type = "password"
                b.style.opacity = "1";
                c.style.opacity = "0";
            }
        }

        function myRegPassword() {
            var a = document.getElementById('regPassword');
            var b = document.getElementById('eye-2');
            var c = document.getElementById('eye-slash-2');

            if (d.type === "password") {
                d.type = "text"
                b.style.opacity = "0";
                c.style.opacity = "1";
            } else {
                d.type = "password"
                b.style.opacity = "1";
                c.style.opacity = "0";
            }
        }
    </script> -->




<!-- old form  -->
<!-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    </head>

    <body>
        <div class="container my-4">

            <h2 class="text-center text-primary p-3 rounded" style="background-color: #f2f2f2;">Sign-Up</h2>
            <div class="container p-5 my-5 w-50 rounded">
                <form action="signup.do" method="post" class="m-auto p-5 rounded need-validation form_style novalidate"
                    style="background-color: #f2f2f2;">
                    <div class="mb-3">
                        <label for="name" class="form-label">Your Name</label>
                        <input type="text" name="name" class="form-control" id="name">
                        <div class="invalid-feedback">Please Enter Your Name</div>
                       
                    </div>
                    <div class="mb-3">
                        <label for="email1" class="form-label">Email</label>
                        <input type="email" name="email" class="form-control" id="email" required
                            pattern="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$">
                        <div class="invalid-feedback" id="email_error_feedback">Please Enter Valid Email</div>
                        
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Password</label>
                        <input type="password" name="password" class="form-control" id="password" required>
                        <div>Please Enter Valid Password</div>
                      
                    </div>
                    <div class="mb-3">
                        <label for="country" class="form-label">Country</label>
                        <select class="form-select" name="country">
                            <c:forEach var="country" items="${countries}">
                                <option value="${country.countryId}">${country.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="mb-3">
                        <label for="phone" class="form-label">Phone</label>
                        <input type="number" name="phone" class="form-control" id="phone" required>
                        <div class="invalid-feedback" id="phone_error_feedback">Enter Valid Phone Number</div>
                    </div>
                    <input type="button" value="Sent OTP" class="btn btn-sm btn-warning" id="send_otp">

                    <div class="mb-3 d-none form-check" id="check_otp_box">
                        <label class="form-label" for="otp">Enter otp Sent to Your Contact Number</label>
                        <input type="number" id="otp" class="form-control">
                        <div class="invalid-feedback" id="otp_error_feedback">Incorrect OTP Please Enter Correct OTP
                        </div>
                        <input type="button" value="Check OTP" id="check_otp" class="mt-2 btn btn-primary btn-sm">
                    </div>
                    <div id="next_step" class="d-none">
                        <div class="g-recaptcha mb-3" data-sitekey="6LcOMxgpAAAAAFvl4tWVzsGckiB3qYm-m0Mt03Hl"></div>
                        <input type="submit" class="btn btn-primary">Submit</input>
                    </div>
                </form>
            </div>

        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

        <script>
            (() => {
                'use strict'

                const forms = document.querySelectorAll('.needs-validation')

                Array.from(forms).forEach(form => {
                    form.addEventListener('submit', event => {

                        if (!form.checkValidity() || emailDuplicateTest || checkDuplicatePhone) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')

                    }, false)
                })
            })
        </script>
    </body>

    </html> -->