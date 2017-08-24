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
    <script src="/resources/js/jquery.mobile.custom.min.js"></script>
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


            $("footer a[href='#topPage']").on('click', function (event) {
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

            // Register swipe event handlers
            $("#myCarousel").swiperight(function () {
                $(this).carousel('prev');
            });
            $("#myCarousel").swipeleft(function () {
                $(this).carousel('next');
            });

        }

        $(window).load(function () {
            initializePage();
        });


    </script>
</head>
<body id="topPage">
<div class="container-fluid store_detail_infomation_layer">
    <h1 class="align-middle store_detail_info_title">${cafeName}</h1>
    <div class="row">
        <c:set var="thumbnailCount" value="0"/>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <c:forEach var="thumbnail" items="${instaThumbnails}" varStatus="status">
                    <c:choose>
                        <c:when test="${status.index == '0'}">
                            <li class="active" data-target="#myCarousel" data-slide-to="${status.index}"></li>
                        </c:when>
                        <c:otherwise>
                            <li data-target="#myCarousel" data-slide-to="${status.index}"></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <c:forEach var="thumbnail" items="${instaThumbnails}" varStatus="status">
                <c:choose>
                <c:when test="${status.index == '0'}">
                <div class="active item">
                    </c:when>
                    <c:otherwise>
                    <div class="item">
                        </c:otherwise>
                        </c:choose>
                        <img src="${thumbnail}" style="width:100%;">
                    </div>
                    </c:forEach>
                </div>

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>

            </div>
        </div>
        <div class="store_detail_infomation">
            <div>
                <div id="hashtags"><b>#전기콘센트많은 #조용한 #분위기좋은</b></div>
                <br>
                <div id="openingHour">Opening Hours : 09:00 - 20:00, 매주 일요일 휴무</div>
                <div id="address">Address : 서울특별시 중구 남대문로5가 한강대로 416</div>
                <br>
            </div>
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
        </div>
    </div>

    <a href="/map.soul">
        <div id="map" class="store_detail_map"></div>
        <script type="text/javascript"
                src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCa0rIVaCLdOwzV8WyKUY9rS0PpcWZQDsM"></script>
    </a>
    <hr>
    <footer class="container-fluid text-center">
        <a href="#topPage" title="To Top">
            <span class="glyphicon glyphicon-chevron-up"></span>
        </a>
    </footer>

</body>
</html>