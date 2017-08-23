<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SeoulCoffee</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="theme-color" content="#2A2C2B">
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
    <link href="https://fonts.googleapis.com/css?family=Shrikhand" rel="stylesheet" type='text/css'>
    <link rel="stylesheet" href="/resources/css/soulcoffee.css">
    <link rel="stylesheet" href="/resources/css/soulcoffee.font.css">
    <script src="/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        function initializePage() {

            $("#main_button").click(function (e) {
                location.href = '/storeDetail.soul';
            });

        }

        $(window).load(function () {
            initializePage();
        });

        setInterval(function() {
            var top = $(window).scrollTop();
            var topPercentage = 100;
            if (top - 200 < 0) {
                topPercentage = (200 - top) / 200 * 100;
                $(".fixbar").css("height", 200-(100-topPercentage)*1.5);
                $(".center_title").css("margin-top", 75-(100-topPercentage));
            }
        } , 5);


    </script>
</head>
<body>
<div class="fixbar">
    <div class="center_title"><span class="title_top">THE</span><br><span class="title_bottom">Soul Coffee</span></div>
</div>

<div class="main">
    <c:forEach var="cafe" items="${cafes}">
        <div id="main_button" class="main_title_background"
             style="background-image: url(/resources/img/${cafe.cafe_seq_no%5+1}.jpg); ">
            <div class="main_dim">
                <div class="main_title">
                    <h3 class="cafe_title">${cafe.cafe_nm}</h3>
                    <p class="text-left">${cafe.road_addr_dtls}</p>
                </div>
                <div class="main_layer">
                    <p class="text-right">
                        <del>4,500원</del>
                    </p>
                    <p class="text-right main_final_price">2,000원</p>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<footer class="container-fluid text-center">
    <a href="#myPage" title="To Top">
        <span class="glyphicon glyphicon-chevron-us"></span>
    </a>
    <p>Bootstrap Theme Made By <a href="#">wonyoung....</a></p>
</footer>


<!--
<a id="map_button" href="/map.soul" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-map-marker"></span>
</a>-->


</body>
</html>