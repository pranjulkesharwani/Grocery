<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <c:if test="${user == null}">
        <c:redirect url="signin.do" />
    </c:if>



    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://unpkg.com/dropzone@5/dist/min/dropzone.min.css" type="text/css" />

        <script src="https://unpkg.com/dropzone@5/dist/min/dropzone.min.js"></script>

    </head>

    <body>
        <div class="modal fade" id="pic_upload_modal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>Upload Your Pic</h3>
                    </div>
                    <div class="modal-body">
                        <form action="upload_pic.do" class="dropzone" id="pic-upload-form"></form>
                    </div>
                    <div class="modal-footer"></div>
                </div>
            </div>
        </div>
        <div class="container-fluid">
            <c:import url="header.jsp" />
            <div class="row">
                <div class="col-10 offset-1">
                    <h3 class="my3 py-3 bg-light text-success ps-3 rounded-2">
                        <c:out value="${user.name}" />
                    </h3>

                    <div class="accordion accordion-flush" id="profile_parent_box">
                        <div class="accordion-item" style="border: 1px solid #ddd">
                            <h2 class="accordion-header">
                                <button type="button" class="accordion-button" data-bs-toggle="collapse"
                                    data-bs-target="#sub-section_1">
                                    My Profile
                                </button>
                            </h2>
                            <div id="sub_section_1" class="accordion-collapse collapse show p-4"
                                data-bs-parent="#profile_parent_box">
                                <div class="row">
                                    <div class="col-md-4 justify-content-center d-flex">
                                        <div class="shadow-lg rounded-circle w-75 text-center">
                                            <img src="show_pic.do" id="my_pic" data-bs-toggle="modal"
                                                data-bs-target="#pic_upload_modal" class="rounded-circle"
                                                style="object-fit:cover" width="270">
                                        </div>
                                    </div>
                                    <div class="col-md-8 fs-5">
                                        <div class="row mb-2 mt-md-0 mt-5">
                                            <div class="col-sm-4 text-md-end">
                                                <b>Name :</b>
                                            </div>
                                            <div class="col-sm-8">
                                                <span>
                                                    <c:out value="${user.name}" />
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col-sm-4 text-md-end">
                                                <b>Email :</b>
                                            </div>
                                            <div class="col-sm-8">
                                                <span>
                                                    <c:out value="${user.email}" />
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col-sm-4 text-md-end">
                                                <b>Password :</b>
                                            </div>
                                            <div class="col-sm-8">
                                                <span>*******</span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col-sm-4 text-md-end">
                                                <b>Phone :</b>
                                            </div>
                                            <div class="col-sm-8">
                                                <span>
                                                    <c:out value="${user.phone}" />
                                                </span>
                                            </div>
                                        </div>
                                        <div class="row mb-2">
                                            <div class="col-sm-4 text-md-end">
                                                <b>Country</b>
                                            </div>
                                            <div class="col-sm-8">
                                                <span>
                                                    <c:out value="${user.country.name}" />
                                                </span>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <script>
            let my_pic = document.querySelector('#my_pic');
            let i = 0;

            Dropzone.options.picUploadForm = {
                init: function () {
                    this.on('complete', () => {
                        my_pic.src = 'show_pic.do?param=' + i++;
                    });
                }
            };

        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>




    </body>

    </html>