<%--
  Created by IntelliJ IDEA.
  User: anderson
  Date: 2017. 8. 13.
  Time: PM 1:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
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


<div class="jumbotron" style="background-image: url(/resources/img/12.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>


<div class="jumbotron" style="background-image: url(/resources/img/13.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Starbucks</h1>
        <p style="color:white;">
            북유럽의 커피강자
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/14.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Twosome place</h1>
        <p style="color:white;">
            둘이먹다 하나 죽어도 모르는 커피
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/9.jpg);">
    <div index.jspclass="container">
        <h1 class="main_title" style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>



<div class="jumbotron" style="background-image: url(/resources/img/12.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>


<div class="jumbotron" style="background-image: url(/resources/img/13.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Starbucks</h1>
        <p style="color:white;">
            북유럽의 커피강자
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/14.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Twosome place</h1>
        <p style="color:white;">
            둘이먹다 하나 죽어도 모르는 커피
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/9.jpg);">
    <div class="container">
        <h1 class="main_title" style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>



<div class="jumbotron" style="background-image: url(/resources/img/12.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>


<div class="jumbotron" style="background-image: url(/resources/img/13.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Starbucks</h1>
        <p style="color:white;">
            북유럽의 커피강자
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/14.jpg); ">
    <div class="container">
        <h1 class="main_title" style="color:white;">Twosome place</h1>
        <p style="color:white;">
            둘이먹다 하나 죽어도 모르는 커피
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/9.jpg);">
    <div class="container">
        <h1 class="main_title" style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>



<a href="book.soul">go to book</a>
<a href="books.soul">go to books</a>


<a id="map_button" href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-map-marker"></span>
</a>


</body>
</html></title>
</head>
<body>

</body>
</html>
