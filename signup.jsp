<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"
            integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA=="
            crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="static/css/signup.css">
        <link rel="stylesheet" href="fontawesom/css/all.min.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    </head>

    <body>
        <%-- <c:import url="header.jsp" /> --%>
        <form action="signup.do" method="post" novalidate>
            <div class="container1">
                <div class="box1">
                    <div class="box-signup" id="signup">
                        <div class="top-header">
                            <h3>Sign Up, Now </h3>
                            <small>We are happy to have you with us.</small>
                        </div>
                        <div class="input-group1">
                            <div class="input-field1">
                                <input type="text" class="input-box1" id="regUser" name="full_name" required>
                                <label for="regUser">Username </label>
                            </div>
                            <div class="input-field1">
                                <input type="text" class="input-box1" id="email" name="email"
                                    pattern="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" required>
                                <label for="email">Email address</label>
                                <div class="invalid-feedback" id="email_error_feedback">Please Enter Valid Email</div>
                            </div>
                            <div class="input-field1">
                                <input type="password" class="input-box1" id="regPassword" name="password" required>
                                <label for="regPassword">Password</label>
                                <div class="eye-area">
                                    <div class="eye-box" onclick="myRegPassword()">
                                        <i class="fa-regular fa-eye" id="eye-2"></i>
                                        <i class="fa-regular fa-eye-slash" id="eye-slash-2"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="input-field1">
                                <input type="number" class="input-box1" id="regNum" name="phone" required>
                                <label for="regNum">Phone Number</label>
                                <div class="invalid-feedback" id="number_error_feedback">Please Enter Valid Number</div>
                            </div>

                            <div class="input-field1">
                                <select id="country_list" class="input-box1" id="country" name="country" required>
                                    <option value="0">Select</option>
                                    <c:forEach var="country" items="${countries}">
                                        <option value="${country.countryId}">${country.name}</option>
                                    </c:forEach>
                                </select>
                            </div>

                            <%--<div class="input-field1">
                                <input type="text" class="input-box1" id="address" name="addressLine1" required>
                                <label for="address">Address</label>
                                <div class="invalid-feedback" id="number_error_feedback">Please Enter Valid Number</div>
                        </div>--%>

                        <div class="remember">
                            <input type="checkbox" id="formCheck-2" class="check">
                            <label for="formCheck-2">Remember Me</label>
                        </div>
                        <div class="input-field1">
                            <input type="submit" class="input-submit" value="Sign Up">
                        </div>

                        <div class="input-field1">
                            <a href="signin.do"><input type="button" class="input-submit" value="Sign In"></a>
                        </div>

                        <!-- <div class="forgot">
                            <a href="#">Forgot Password</a>
                        </div> -->
                    </div>
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
        </script>

        <script>
            // ------------------------------Email---------
            let email = document.querySelector('#email');
            let email_error_feedback = document.querySelector('#email_error_feedback');
            let emailDuplicateTest = false;

            let emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;

            let checkEmailExists = async (email) => {
                console.log('check_email_exist.do?email=' + email);
                let response = await fetch('check_email_exist.do?email=' + email);
                let result = await response.text();

                return result;
            }

            email.addEventListener('focus', () => {
                emailDuplicateTest = false;
                email.classList.remove('is-invalid');
                email.classList.remove('is-valid');
                email.error_feedback.innerText = 'Please Enter Valid Email';
            });

            email.addEventListerner('blur', (event) => {
                if (emailPattern.test(event.target.value)) {
                    checkEmailExists(event.target.value).then((data) => {
                        if (data == 'true') {
                            emailDuplicateTest = true;
                            email.classList.add('is-invalid');
                            email_error_feedback.innerText = 'Email Already Exists...';
                        } else {
                            email.classList.add('is-valid');
                        }
                    }).catch((error) => {
                        console.log(error);
                    });
                } else {
                    email.classList.add('is-invalid');
                }
            });
        </script>

        <!-- --------------------------Email--------------------- -->
        <script>
            // -----------------------------BootStrap Code ---------------------------
            (() => {
                'use strict'

                const forms = document.querySelectorAll(".needs-validation")

                Array.from(forms).forEach(form => {
                    form.addEventListener('submit', event => {
                        if (!form.checkValidity() || emailDuplicateTest) {
                            event.preventDefault()
                            event.stopPropagation()
                        }

                        form.classList.add('was-validated')
                    }, false)
                })
            })()
        </script>
    </body>

    </html>