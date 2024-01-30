<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <style>
        div>span {
            cursor: pointer;
        }
    </style>
</head>

<body>
    <div class="container-fluid d-flex justify-content-end" style="height:45px; background-color:#ced4da;">
        <p><a href="#" class="text-decoration-none text-muted align-middle">Settings</a></p>
    </div>
    <div class="container">
        <h2 class="text-warning">Choose categories you wish to sell</h2>
        <h5 class="text-muted">Choose categories you wish to sell</h5>
        <hr>
        <form action="choose_item.do" method="get">
            <div class="row">

                <div class=" col-3">
                    <h5 class="mt-2">Beauty, Health & Groceries</h5>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="grocery" value="grocery">
                        <div>
                            <span class="mx-2">Grocery</span>
                        </div>
                    </div>

                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="health" value="health">
                        <div>
                            <span class="mx-2">Health</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="beauty" value="beauty">
                        <div>
                            <span class="mx-2">Beauty</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="personalCareApplication"
                            value="personalCareApplication">
                        <div>
                            <span class="mx-2">Personal Care Applicance</span>
                        </div>
                    </div>
                </div>

                <div class=" col-3">
                    <h5 class="mt-2">Books Movies & Games</h5>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="grocery">
                        <div>
                            <span class="mx-2">Grocery</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="health">
                        <div>
                            <span class="mx-2">Health</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="beauty">
                        <div>
                            <span class="mx-2">Beauty</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="personalCareApplication">
                        <div>
                            <span class="mx-2">Personal Care Applicance</span>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <h5 class="mt-2">Electronic & Computers</h5>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="consumersElectronic">
                        <div>
                            <span class="mx-2">Consumers Electronic</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="mobilePhones">
                        <div>
                            <span class="mx-2">Mobile Phones</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="personalComputers">
                        <div>
                            <span class="mx-2">Personal Computers</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="officeProducts">
                        <div>
                            <span class="mx-2">Office Products</span>
                        </div>
                    </div>
                </div>


                <!-- Side Panel Helper Section and FAQs -->
                <div class="col-3 border-start">
                    <ul>
                        <h3 class="text-muted">FAQs</h3>
                        <li><a class="text-decoration-none">Can I select multiples categories?</a>
                        </li>
                        <li class="my-3"><a class="text-decoration-none">My category is not listed here. What
                                should I
                                do?</a>
                        </li>
                        <li class="my-3"><a class="text-decoration-none">Which website link should I enter?</a>
                        </li>
                        <li class="my-3"><a class="text-decoration-none">Can I select multiples categories?</a>
                        </li>
                        <h3 class="text-muted">Help Center</h3>
                    </ul>
                </div>
            </div>
            <!-- First Row================================================================================ -->
            <div class="row">
                <div class="col-3">
                    <h5 class="mt-2">Clothing Shoes & Jewelry</h5>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Clothing</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Shoes</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Watches</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Jewelery</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Luggage</span>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <h5 class="mt-2">Home, Gardens, Tools & Furniture</h5>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Home</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Large Appliances</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Pet Supplies</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Kitchen</span>
                        </div>
                    </div>

                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2">Furniture</span>
                        </div>
                    </div>
                </div>
                <div class="col-3">
                    <h5 class="mt-2">Toys, Baby & Sports</h5>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="baby">
                        <div>
                            <span class="mx-2">Baby</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="toys">
                        <div>
                            <span class="mx-2">Toys</span>
                        </div>
                    </div>
                    <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="sportingGoods">
                        <div>
                            <span class="mx-2">Sporting Goods</span>
                        </div>
                    </div>
                    <!-- <div class="input-group ms-2">
                        <input class="form-check-input mt-2" type="checkbox" name="">
                        <div>
                            <span class="mx-2"></span>
                        </div>
                    </div> -->
                </div>
            </div>
            <input class="mt-5" type="submit" value="Done" name="">
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
        crossorigin="anonymous"></script>


</body>

</html>