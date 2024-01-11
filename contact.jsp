<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- <link href="static/css/contact.css" rel="stylesheet" /> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css" />

    <style>
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }

        .container {
            width: 1000px !important;
        }

        p {
            font-size: 12px;
        }

        h1 {
            font-family: Verdana, Geneva, Tahoma, sans-serif;
        }

        .bg-primary {
            background-color: #01d28e !important;
        }

        .form-control {
            height: 36px;
            background: #fff;
            color: rgba(0, 0, 0, 0, 0);
            font-size: 14px;
            border-radius: 2px;
            box-shadow: none !important;
            border: 1px solid rgba(0, 0, 0, 0, 0);
        }

        .contactform .form-control {
            border: none;
            border-bottom: 1px solid black;
            padding: 0;
        }

        .form-control:focus,
        .form-control:active {
            border-color: #01d28e !important;
        }

        .btn-primary {
            background: #01d28e !important;
            border-color: #01d28e !important;
            color: white;
            width: 100px;
            border-radius: 0 !important;
        }

        .btn-primary:hover {
            background-color: #28a745 !important;
        }

        .bi {
            font-size: 50px;
        }

        @media only screen and(max-width:600px) {
            .container {
                width: 100% !important;
                padding-bottom: 207px;
            }
        }
    </style>
</head>

<body>
    <div class="container mt-5 shadow">
        <div class="row">
            <div class="col-md-4 bg-primary p-5 text-white order-sm-first order-last">
                <h2>Let's get in touch</h2>
                <p>We're open for any suggestion or just to have a chat</p>
                <div class="d-flex mt-2">
                    <i class="bi bi-geo-alt"></i>
                    <p class="mt-3 ms-3">Address : Sai Colony Road, DeenDayal Jabalpur</p>
                </div>
                <div class="d-flex mt-2">
                    <i class="bi bi-telephone-forward"></i>
                    <p class="mt-3 ms-3">Phone : 7067783130</p>
                </div>
                <div class="d-flex mt-2">
                    <i class="bi bi-envelope"></i>
                    <p class="mt-3 ms-3">Email : pranjulkesharwani08@gmail.com</p>
                </div>
                <div class="d-flex mt-2">
                    <i class="bi bi-youtube"></i>
                    <p class="mt-3 ms-3">Channel : www.contactform.com</p>
                </div>
            </div>
            <div class="col-md-8 p-5">
                <h2>Get in touch</h2>
                <form class="row g-3 contactForm mt-4" action="" method="">
                    <div class="col-md-6">
                        <label for="firstname" class="form-label">First Name</label>
                        <input type="text" class="form-control" id="firstname">
                    </div>
                    <div class="col-md-6">
                        <label for="lastname" class="form-label">Last Name</label>
                        <input type="text" class="form-control" id="lastname">
                    </div>
                    <div class="col-12">
                        <label for="subject" class="form-label">Subject</label>
                        <input type="text" class="form-control" id="subject">
                    </div>
                    <div class="col-12">
                        <label for="emailid" class="form-label">Email Id</label>
                        <input type="email" class="form-control" id="emailid">
                    </div>
                    <div class="col-md-6">
                        <label for="inputCity" class="form-label">City</label>
                        <input type="text" class="form-control" id="inputCity">
                    </div>
                    <div class="col-md-6">
                        <label for="number" class="form-label">Contact Number</label>
                        <input type="number" class="form-control" id="number">
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary mt-3">Sign in</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>
</body>

</html>