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


            var uluru = {lat: 37.555790, lng: 126.973712};
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 16,
                scrollwheel: false,
                draggable: false,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
            });


            $("footer a[href='#myPage']").on('click', function (event) {
                // Make sure this.hash has a value before overriding default behavior
                if (this.hash !== "") {
                    // Prevent default anchor click behavior
                    event.preventDefault();

                    // Store hash
                    var hash = this.hash;

                    // Using jQuery's animate() method to add smooth page scroll
                    // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function () {

                        // Add hash (#) to URL when done scrolling (default click behavior)
                        window.location.hash = hash;
                    });
                } // End if
            });

        }

        $(window).load(function () {
            initializePage();


        });


    </script>
</head>
<body id="myPage">
<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <button onclick="javascript:history.back();" type="button" class="navbar-toggle navbar-left"><span
                class="glyphicon glyphicon-chevron-left" style="color:white"></span></button>
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Soul Coffee</a>
        </div>
    </div>
</nav>
<div class="container store_detail_infomation_layer">
    <div class="container">

        <img src="/resources/img/jumbotron_bg4.jpg" class="img-responsive" alt="Responsive image">

    </div>

    <div class="store_detail_infomation">
        <h1 class="store_detail_info_title">Black Drum</h1>

        <table class="table">
            <thead>
            <tr>
                <th>메뉴</th>
                <th>here</th>
                <th>to go</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>아메리카노</td>
                <td>4500원</td>
                <td>2800원</td>
            </tr>
            <tr>
                <td>밀크티</td>
                <td>5500원</td>
                <td>3400원</td>
            </tr>
            <tr>
                <td>에이드</td>
                <td>6000원</td>
                <td>4500원</td>
            </tr>
            </tbody>
        </table>
        여기에 제목 및 내용 그리고 주소 좋아요수 등이 들어갑니다 - 준영
    </div>
</div>

<div class="container-fluid">
    <hr>
    여기에 인스타그램 api가 들어갑니다 - 준영
    <hr>
</div>
<a href="/map.soul">
    <div id="map" class="store_detail_map"></div>
    <script type="text/javascript"
            src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCa0rIVaCLdOwzV8WyKUY9rS0PpcWZQDsM"></script>
</a>
<div class="container-fluid">
    <hr>

    <table class="table bottom_table">
        <tbody>
        <tr>
            <td><span class="glyphicon glyphicon-chevron-left" style="color:white"></span></td>
            <td><span class="glyphicon glyphicon-chevron-left" style="color:white"></span></td>
            <td><span class="glyphicon glyphicon-chevron-left" style="color:white"></span></td>
        </tr>
        </tbody>
    </table>
    <hr>
</div>
<footer class="container-fluid text-center">
    <a href="#myPage" title="To Top">
        <span class="glyphicon glyphicon-chevron-up"></span>
    </a>
    <p>Bootstrap Theme Made By <a href="#">wonyoung....</a></p>
</footer>

</body>
</html>