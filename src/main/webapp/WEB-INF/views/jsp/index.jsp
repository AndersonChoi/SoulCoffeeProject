<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SeoulCoffee</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
    <script src="/resources/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="/resources/css/soulcoffee.css">
    <script type="text/javascript">

        function initializePage() {

            $('.jumbotron').css("margin", "0px");
            $('.jumbotron').css("background-size", "100%");


            $("#main_button").click(function (e) {
                location.href = '/storeDetail.soul';
            });

        }

        $(window).load(function () {
            initializePage();
        });


    </script>
</head>
<body>
<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar_main"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Soul Coffee</a>
        </div>
        <div id="navbar_main" class="collapse navbar-collapse ">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">Default</a></li>
                <li><a href="#">Static top</a></li>
                <li class="active"><a href="#">Fixed top <span class="sr-only">(current)</span></a></li>
            </ul>
        </div>
    </div>
</nav>


<div id="main_button" class="container-fluid main_title_background" style="background-image: url(/resources/img/jumbotron_bg.jpg); ">
    <div class="main_layer">
    <div class="container main_title_layer">
        <h3 class="main_title" style="color:white;">Black Drum</h3>
        <p class="main_info">
            향긋한 커피와 서울역의 만남<br>
            서울스퀘어 1층 | 10:00 ~ 22:00
        </p>
    </div>
    <div class="container-fluid main_goto_shop text-right">
        <span class="text-right"><del>4,500원</del></span>
        <span class="text-right main_final_price">2,000원</span>
    </div>
    </div>
</div>



<div id="main_button" class="container-fluid main_title_background" style="background-image: url(/resources/img/jumbotron_bg2.jpg); ">
    <div class="main_layer">
        <div class="container main_title_layer">
            <h3 class="main_title" style="color:white;">아메리칸 트럭</h3>
            <p class="main_info">
                커피매니아의 고향<br>
                서울스퀘어 1층 | 10:00 ~ 22:00
            </p>
        </div>
        <div class="container-fluid main_goto_shop text-right">
            <span class="text-right"><del>3,500원</del></span>
            <span class="text-right main_final_price">1,000원</span>
        </div>
    </div>
</div>

<div id="main_button" class="container-fluid main_title_background" style="background-image: url(/resources/img/jumbotron_bg3.jpg); ">
    <div class="main_layer">
        <div class="container main_title_layer">
            <h3 class="main_title" style="color:white;">STAR BUCKS</h3>
            <p class="main_info">
                커피매니아의 고향<br>
                서울스퀘어 1층 | 10:00 ~ 22:00
            </p>
        </div>
        <div class="container-fluid main_goto_shop text-right">
            <span class="text-right"><del>4,500원</del></span>
            <span class="text-right main_final_price">2,000원</span>
        </div>
    </div>
</div>

<div id="main_button" class="container-fluid main_title_background" style="background-image: url(/resources/img/jumbotron_bg4.jpg); ">
    <div class="main_layer">
        <div class="container main_title_layer">
            <h3 class="main_title" style="color:white;">투썸플레이스</h3>
            <p class="main_info">
                커피매니아의 고향<br>
                서울스퀘어 1층 | 10:00 ~ 22:00
            </p>
        </div>
        <div class="container-fluid main_goto_shop text-right">
            <span class="text-right"><del>4,500원</del></span>
            <span class="text-right main_final_price">2,000원</span>
        </div>
    </div>
</div>










<footer class="container-fluid text-center">
    <a href="#myPage" title="To Top">
        <span class="glyphicon glyphicon-chevron-us"></span>
    </a>
    <p>Bootstrap Theme Made By <a href="#">wonyoung....</a></p>
</footer>

<a id="map_button" href="/map.soul" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-map-marker"></span>
</a>


</body>
</html>