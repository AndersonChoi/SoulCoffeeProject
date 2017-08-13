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
        <button type="button" class="navbar-toggle navbar-left"><span class="glyphicon glyphicon-chevron-left" style="color:white"></span></button>
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Soul Coffee</a>
        </div>
    </div>
</nav>


<div class="jumbotron-fluid" style="background-image: url(/resources/img/jumbotron_bg.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Black Drum</h1>
    </div>
</div>
<div class="container-fluid">
    여기에 이미지가 들어갑니다 - 준영
</div>

<hr>
<div class="container-fluid">
    여기에 제목 및 내용 그리고 주소 좋아요수 등이 들어갑니다 - 준영
</div>

<hr>
<div class="container-fluid">
    여기에 인스타그램 api가 들어갑니다 - 준영
</div>

<div class="container-fluid">
    여기에 지도가 들어갑니다 - 원영
</div>

<div class="container-fluid">
    여기에 다른곳으로 갈 수있는 위치가들어갑니다 - 원영
</div>





</body>
</html>