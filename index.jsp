<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- <img src="static/images/logo.webp" alt="Logo" width="30" height="24"> -->
        <title>:: Grocery ::</title>

        <link rel="stylesheet" href="static/css/header2.css">
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

            <!-- Start-------New Nav ---------------------------------->
            <div class="container">
                <nav class="nav">
                    <div class="con con-nav">
                        <ul>
                            <li>
                                <span class="">
                                    <i class="bi bi-list"></i>
                                    All
                                </span>
                            </li>
                            <li><a href="#" class="ms-3">Best Seller</a></li>
                            <li><a href="#">Today's Deals</a></li>
                            <li><a href="#">Customer Service</a></li>
                            <li><a href="#">Kitchen</a></li>
                            <li><a href="#">Prime</a></li>
                        </ul>
                    </div>
                </nav>
            </div>

            <!-- End-------New Nav ---------------------------------->


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

        <!-- card section -->
        <c:import url="cardsection.jsp" />

        <!-- top offers -->
        <c:import url="topoffer.jsp" />

        <!-- fruit and vegetables -->
        <c:import url="fruitsandvegetables.jsp" />

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