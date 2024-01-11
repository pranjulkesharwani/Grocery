<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <style>
        .nav-link {
            color: black;
        }

        .nav-link {
            position: relative;
        }

        .nav-link:before {
            display: block;
            content: "";
            position: absolute;
            bottom: 0;
            left: 0;
            width: 0;
            height: 3px;
            /* background: green; */
            /* background: #01d28e !important; */
            background: #28a745 !important;
            transition: width 0.5s ease;
        }

        .nav-link:hover {
            /* color: green; */
            /* color: #28a745 !important; */
            color: #01d28e !important;
        }

        .nav-link:hover:before {
            width: 100%;
        }

        /* -------------------------------------Search ----------------------------------- */
        .search-container {
            width: 600px;
            margin-left: 25px;
            display: flex;
            height: 40px;
            justify-content: space-between;
            border-radius: 3px;
            overflow: hidden;
        }

        .search-container:hover {
            border: 3px solid orange;
        }

        .search-select {
            width: 60px;
            border: none;
            background-color: rgb(230, 227, 227);
        }

        .search-input {
            width: 100%;
            height: 100%;
            border: none;
            outline: none;
            padding: 3px;
            font-size: 1.1rem;
        }

        .search-icon {
            width: 40px;
            background-color: rgb(235, 160, 94);
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 1.2rem;
            color: black;
        }

        @import url("https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.2/font/bootstrap-icons.min.css");
    </style>
    <header>
        <div class="container-fluid">
            <div class="row border">
                <!-- <div class="col-1"></div> -->
                <div class="col">
                    <nav class="navbar navbar-expand-lg bg-light">
                        <div class="container-fluid">
                            <a class="navbar-brand text-success" href="index.do">
                                <img src="static/images/logo.webp" alt="Logo" width="30" height="24"
                                    class="d-inline-block align-text-top">
                                Grocery
                            </a>
                            <div class="collapse navbar-collapse offset-1" id="navbarSupportedContent">
                                <!-- <form class="d-flex" role="search">
                                    <input class="form-control me-2" type="search" placeholder="Search"
                                        aria-label="Search">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                                        class="bi bi-search" viewBox="0 0 16 16">
                                        <path
                                            d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0" />
                                    </svg>
                                </form> -->

                                <!-- Search------------------------------------------------------ -->
                                <div class="search-container">
                                    <select class="search-select">
                                        <option>All</option>
                                    </select>
                                    <input type="text" class="search-input" />
                                    <div class="search-icon">
                                        <i class="bi bi-search"></i>

                                    </div>
                                </div>

                                <!-- ------------------------------ Search ---------------------------------------- -->
                                <ul class="navbar-nav me-auto nav-item offset-2">
                                    <li class="nav-item">
                                        <a class="nav-link active link-success" aria-current="page"
                                            href="index.do">Home</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active link-success" href="profile.do">Profile</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link active link-success" href="contact.do">Contact Us</a>
                                    </li>

                                    <c:choose>
                                        <c:when test="${user == null}">
                                            <li class="">
                                                <a href="signin.do" class="nav-link active link-success">Sign-In
                                                </a>
                                            </li>
                                            <li class="">
                                                <a href="signup.do" class="nav-link active link-success">Sign-Up
                                                </a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li>
                                                <a href="logout.do" class="nav-link active link-success">Log-Out</a>
                                            </li>
                                        </c:otherwise>
                                    </c:choose>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
                <!-- <div class="col-1"></div> -->
            </div>
        </div>
    </header>