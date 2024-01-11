<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <img src="static/images/logo.webp" alt="Logo" width="30" height="24"> -->
        <title>:: Grocery ::</title>


        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css">
        <link rel="stylesheet" href="static/css/card.css">
        <link rel="stylesheet" href="static/css/footer.css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="static/css/index.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    </head>

    <body>
        <div class="container-fluid">
            <c:import url="header.jsp" />

            <!-- carousel ################################################ Start ################################################################ -->
            <!-- <div col-1></div> -->
            <div class="container">
                <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="hover">
                    <div class="carousel-indicators">
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0"
                            class="active" aria-current="true" aria-label="Slide 1"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                            aria-label="Slide 2"></button>
                        <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                            aria-label="Slide 3"></button>
                    </div>
                    <div class="carousel-inner my-5">
                        <div class="carousel-item active">
                            <img src="static/images/c1.webp" class="d-block w-100" alt="Not Found" style="height:450px">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>First slide label</h5>
                                <p>Some representative placeholder content for the first slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="static/images/c2.webp" class="d-block w-100" alt="..." style="height: 450px">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Second slide label</h5>
                                <p>Some representative placeholder content for the second slide.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="static/images/c3.webp" class="d-block w-100" alt="Not found" style="height:450px">
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Third slide label</h5>
                                <p>Some representative placeholder content for the third slide.</p>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
                        data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Next</span>
                    </button>
                </div>
            </div>

            <!-- <div col-1></div> -->
        </div>
        <!-- carousel ################################################ End ################################################################ -->

        <!-- Shop Section  ################################################ Start ################################################################ -->
        <!-- Shop Section -->
        <div class="container-fluid">
            <div class="containers">
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/masti.webp">
                            <!-- <div class="col">box1</div>
                                <div class="col">box2</div>
                            <div class="col">box3</div>
                            <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/amul.webp">
                            <!-- <div class="col">box1</div>
                                <div class="col">box2</div>
                            <div class="col">box3</div>
                            <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/butter.webp">
                            <!-- <div class="col">box1</div>
                                <div class="col">box2</div>
                            <div class="col">box3</div>
                            <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/soft_drink.webp">
                            <!-- <div class="col">box1</div>
                                <div class="col">box2</div>
                            <div class="col">box3</div>
                            <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/masti.webp">
                            <!-- <div class="col">box1</div>
                                <div class="col">box2</div>
                            <div class="col">box3</div>
                            <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/amul.webp">
                            <!-- <div class="col">box1</div>
                            <div class="col">box2</div>
                            <div class="col">box3</div>
                            <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/butter.webp">
                            <!-- <div class="col">box1</div>
                                <div class="col">box2</div>
                                <div class="col">box3</div>
                                <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>
                <div class="row r">
                    <div class="box-content col">
                        <h2>Health & Personal Care</h2>
                        <div class="box-img">
                            <img src="static/images/soft_drink.webp">
                            <!-- <div class="col">box1</div>
                                <div class="col">box2</div>
                                <div class="col">box3</div>
                            <div class="col">box4</div> -->
                        </div>
                        <p>See more</p>
                    </div>
                </div>

            </div>
        </div>

        <!-- Shop Section  ################################################ End ################################################################ -->
        <!-- Card Section  ################################################ End ################################################################ -->
        <!-- card section -->
        <div class="container-fluid mt-5">
            <div class="container">
                <div class="row p-3" style="background-color: rgba(247,247,247);">
                    <h4>Best Sellers</h4>
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                            <img src="static/images/masti.webp" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="mb-0" style="color:rgb(165, 163, 163)">Lassi</p>
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the
                                    bulk of the card's content.</p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-fill"></i><i class="bi bi-star"></i><span
                                        style="color:rgb(165, 163, 163)">166 Ratings</span>
                                </li>

                                <!-- <li class="list-group-item">A second item</li> -->
                                <!-- <li class="list-group-item"><i class="bi bi-currency-rupee"></i>20.0 </li> -->

                            </ul>
                            <div class=" card-body">
                                <select class="form-select mb-2" aria-label="Default select example">
                                    <!-- <option selected>Open this select menu</option> -->
                                    <option selected value="1">Quantity : 1</option>
                                    <option value="2">Quantity : 1</option>
                                    <option value="3">Quantity : 1</option>
                                </select>
                                <span class="d-block ps-0 pb-5"><b><i class="bi bi-currency-rupee"></i>20.0
                                    </b></span>
                                <a href="#" class=""><span class="btn btn-secondary" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" data-bs-title="Save for later"><i
                                            class="bi bi-bag"></i></span></a>
                                <a href="#" class="btn btn-outline-danger w-75 rounded-1">Add to Card</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                            <img src="static/images/soft_drink.webp" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="mb-0" style="color:rgb(165, 163, 163)">Soft</p>
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the
                                    bulk of the card's content.</p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-half"></i><i class="bi bi-star"></i><span
                                        style="color:rgb(165, 163, 163)">166 Ratings</span></li>
                                <!-- <li class="list-group-item">A second item</li> -->
                                <!-- <li class="list-group-item"><i class="bi bi-currency-rupee"></i>20.0 </li> -->
                            </ul>
                            <div class="card-body">
                                <select class="form-select mb-2" aria-label="Default select example">
                                    <!-- <option selected>Open this select menu</option> -->
                                    <option selected value="1">Quantity : 1</option>
                                    <option value="2">Quantity : 1</option>
                                    <option value="3">Quantity : 1</option>
                                </select>
                                <span class="d-block ps-0 pb-5"><b><i class="bi bi-currency-rupee"></i>20.0
                                    </b></span>
                                <a href="#" class=""><span class="btn btn-secondary" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" data-bs-title="Save for later"><i
                                            class="bi bi-bag"></i></span></a>
                                <a href="#" class="btn btn-outline-danger w-75 rounded-1">Add to Card</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                            <img src="static/images/butter.webp" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="mb-0" style="color:rgb(165, 163, 163)">Butter</p>
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the
                                    bulk of the card's content.</p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-fill"></i><i class="bi bi-star-half"></i><i
                                        class="bi bi-star"></i><i class="bi bi-star"></i><span
                                        style="color:rgb(165, 163, 163)">166 Ratings</span></li>
                                <!-- <li class="list-group-item">A second item</li> -->
                                <!-- <li class="list-group-item"><i class="bi bi-currency-rupee"></i>20.0 </li> -->
                            </ul>
                            <div class="card-body">
                                <select class="form-select mb-2" aria-label="Default select example">
                                    <!-- <option selected>Open this select menu</option> -->
                                    <option selected value="1">Quantity : 1</option>
                                    <option value="2">Quantity : 1</option>
                                    <option value="3">Quantity : 1</option>
                                </select>
                                <span class="d-block ps-0 pb-5"><b><i class="bi bi-currency-rupee"></i>20.0
                                    </b></span>
                                <a href="#" class=""><span class="btn btn-secondary" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" data-bs-title="Save for later"><i
                                            class="bi bi-bag"></i></span></a>
                                <a href="#" class="btn btn-outline-danger w-75 rounded-1">Add to Card</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="card" style="width: 18rem;">
                            <img src="static/images/amul.webp" class="card-img-top" alt="...">
                            <div class="card-body">
                                <p class="mb-0" style="color:rgb(165, 163, 163)">Milk</p>
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the
                                    bulk of the card's content.</p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item"><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i
                                        class="bi bi-star-half"></i><i class="bi bi-star"></i><span
                                        style="color:rgb(165, 163, 163)">166 Ratings</span></li>
                                <!-- <li class="list-group-item">A second item</li> -->
                                <!-- <li class="list-group-item"><i class="bi bi-currency-rupee"></i>20.0 </li> -->
                            </ul>
                            <div class="card-body">
                                <select class="form-select mb-2" aria-label="Default select example">
                                    <!-- <option selected>Open this select menu</option> -->
                                    <option selected value="1">Quantity : 1</option>
                                    <option value="2">Quantity : 1</option>
                                    <option value="3">Quantity : 1</option>
                                </select>
                                <span class="d-block ps-0 pb-5"><b><i class="bi bi-currency-rupee"></i>20.0
                                    </b></span>
                                <a href="#" class=""><span class="btn btn-secondary" data-bs-toggle="tooltip"
                                        data-bs-placement="bottom" data-bs-title="Save for later"><i
                                            class="bi bi-bag"></i></span></a>
                                <a href="#" class="btn btn-outline-danger w-75 rounded-1">Add to Card</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Card Section  ################################################ End ################################################################ -->
            <!-- top offers -->
            <div class="container-fulid mt-5">
                <div class="container">
                    <div class="row mt-3 p-3" style="background-color: rgba(247,247,247);">
                        <h4>Top Offers</h4>
                        <div class="col-3">
                            <div class="card c" style="width: 18rem;">
                                <img src="static/images/top1.webp" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text">.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="card c" style="width: 18rem;">
                                <img src="static/images/top1.webp" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text">.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="card c" style="width: 18rem;">
                                <img src="static/images/top1.webp" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text">.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="card c" style="width: 18rem;">
                                <img src="static/images/top1.webp" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <p class="card-text">.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- swiper slider ------------------------------------------------------------------------------->


        </div>

        <c:import url="footer.jsp" />



        <!-- +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ -->

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>

        <script>
            const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
            const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
        </script>
    </body>

    </html>