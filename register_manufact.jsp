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
        <h1>Next1 Page</h1>
        <!-- ${param.name}
        ${param.password}
        ${param.phone} -->

        <!-- ${aaa} -->
        <%--<c:out value="${param.name}" />
        <c:out value="${param.phone}" />
        <c:out value="${param.password}" />
        --%>
        <hr>
        <div class="container">

            <!-- ${map.name} -->
            <!-- ${map.password} -->
            <form action="manufact_in.do" class="row g-3" method="post">

                <div class="col-12">
                    <label for="inputAddress" class="form-label">Address 1</label>
                    <input type="text" class="form-control" id="inputAddress" name="address1"
                        placeholder="1234 Main St">
                </div>
                <div class="col-12">
                    <label for="inputAddress2" class="form-label">Address 2</label>
                    <input type="text" class="form-control" id="inputAddress2" name="address2"
                        placeholder="Apartment, studio, or floor">
                </div>
                <div class="col-md-4">
                    <label for="inputState" class="form-label">Country</label>
                    <select id="inputState" class="form-select" name="countryId">
                        <c:forEach var="country" items="${countries}">
                            <option value="${country.countryId}">
                                <c:out value="${country.name}" />
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <div class="col-md-6">
                    <label for="inputCity" class="form-label">City</label>
                    <select id="inputState" class="form-select" name="cityId">
                        <c:forEach var="city" items="${cities}">
                            <option value="${city.cityId}">
                                <c:out value="${city.name}" />
                            </option>
                        </c:forEach>
                    </select>
                </div>
                <!-- <div class="col-md-4">
                    <label for="inputState" class="form-label">State</label>
                    <select id="inputState" class="form-select">
                        <option selected>Choose...</option>
                        <option>...</option>
                    </select>
                </div> -->
                <div class="col-md-2">
                    <label for="inputZip" class="form-label">Zip</label>
                    <input type="text" class="form-control" id="inputZip" name="zip">
                </div>
                <div class="col-12">
                    <label for="inputDescription" class="form-label">Description</label>
                    <textarea id="inputDescription" class="form-control" name="description"></textarea>
                </div>
                <!-- <div class="col-4">
                    <label for="inputStatusId" class="form-label">Status Id</label>
                    <select id="inputStatusId" class="form-select" name="statusId">
                        <forEach var="status" items="${statusId}">
                            <option value="${status.statusId}">
                                <c:out value="${status.name}" />
                            </option>
                        </forEach>
                    </select>
                </div> -->
                <!-- <input type="number" id="inputStatusId" class="form-control" name="statusId"> -->
                <div class="col-4">
                    <label for="inputWebsite" class="form-label">Website URL</label>
                    <input type="text" id="inputWebsite" class="form-control" name="website">
                </div>
                <div class="col-4">
                    <label for="inputRegistration" class="form-label">Registration Num</label>
                    <input type="number" id="inputRegistration" class="form-control" name="registration">
                </div>
                <div class="col-12">
                    <button type="submit" class="btn btn-primary">Sign in</button>
                </div>
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"></script>

    </body>

    </html>