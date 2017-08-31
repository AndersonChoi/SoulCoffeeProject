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
                zoom: 17,
                center: uluru
            });
            var marker = new google.maps.Marker({
                position: uluru,
                map: map
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
        <button onclick="javascript:history.back();" type="button" class="navbar-toggle navbar-left"><span class="glyphicon glyphicon-chevron-left" style="color:white"></span></button>
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Soul Coffee</a>
        </div>
    </div>
</nav>
    <div id="map" class="store_map" ></div>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyCa0rIVaCLdOwzV8WyKUY9rS0PpcWZQDsM"></script>
</body>
</html>