<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .c {
            transition: 0.5s;
        }

        .c:hover {
            transform: scale(1.2);
            z-index: 2;
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="row mt-5 p-3" style="background-color: rgba(247,247,247);">
            <h4>Staples</h4>
            <div class="col c">
                <div class="card" style="width: 10rem;">
                    <img src="static/images/st1.png" alt="">
                    <!-- <div class="card-body">
                    </div> -->
                </div>
            </div>
            <div class="col c">
                <div class="card" style="width:10rem;">
                    <img src="static/images/st2.png">
                    <!-- <div class="card-body">
                    </div> -->
                </div>
            </div>
            <div class="col c">
                <div class="card" style="width:10rem;">
                    <img src="static/images/st3.png">
                </div>
            </div>
            <div class="col c">
                <div class="card" style="width:10rem;">
                    <img src="static/images/st4.png">
                </div>
            </div>
            <div class="col c">
                <div class="card" style="width:10rem;">
                    <img src="static/images/st5.png">
                </div>
            </div>
            <div class="col c">
                <div class="card" style="width:10rem;">
                    <img src="static/images/st6.png">
                </div>
            </div>
        </div>
    </div>
</body>

</html>