<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    </head>

    <body>
        <h1>Add Product Page</h1>

        <hr>
        <div class="container">
            <div class="row">
                <div class="col">
                    <button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#reg-modal">
                        Enter Product Details
                    </button>
                </div>
            </div>
            <form action="addproduct.do" method="post" enctype="multipart/form-data">
                <div class="modal fade" id="reg-modal" tabindex="-1" aria-labelledby="modal-title" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Modal title</h5>
                                <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                            </div>
                            <div class="modal-body">
                                <!-- <p>Modal body text goes here.</p> -->
                                <label id="" class="form-label">Name</label>
                                <input class="form-control" type="text" name="name" value="">
                                <label id="" class="form-label">Price</label>
                                <input class="form-control" type="number" name="price">
                                <label id="" class="form-label">Unit id</label>
                                <input class="form-control" type="number" name="unitId">
                                <label id="" class="form-label">Quantity</label>
                                <input class="form-control" type="number" name="quantity">
                                <label id="categoryId" class="form-label">Category id</label>
                                <select class="form-select" id="categoryId" name="categoryId">
                                    <c:forEach var="category" items="${categories}">
                                        <option value="${category.categoryId}">
                                            <c:out value="${category.name}" />
                                        </option>
                                    </c:forEach>
                                </select>
                                <label id="" class="form-label">Description</label>
                                <input class="form-control" type="text" name="description">
                                <label class="form-label">Product Image</label>
                                <input class="form-control" type="file" name="upload">
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add Product</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>

    </body>

    </html>