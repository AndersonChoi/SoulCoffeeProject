<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SeoulCoffee</title>
    <script src="http://code.jquery.com/jquery-2.2.4.min.js"
            integrity="sha256-BbhdlvQf/xTY9gja0Dq3HiwQF8LaCRTXxZKRutelT44="
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/resources/css/soulcoffee.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/bootstrap-theme.min.css">
    <script src="/resources/js/bootstrap.min.js"></script>
</head>
<body>
<!-- Fixed navbar -->
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                    aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Project name</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="../navbar/">Default</a></li>
                <li><a href="../navbar-static-top/">Static top</a></li>
                <li class="active"><a href="./">Fixed top <span class="sr-only">(current)</span></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>


<div class="jumbotron" style="background-image: url(/resources/img/jumbotron_bg.jpg); background-size: 100%">
    <div class="container">
        <h1 style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>


<div class="jumbotron" style="background-image: url(/resources/img/jumbotron_bg2.jpg); background-size: 100%">
    <div class="container">
        <h1 style="color:white;">Starbucks</h1>
        <p style="color:white;">
            북유럽의 커피강자
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/jumbotron_bg3.jpg); background-size: 100%">
    <div class="container">
        <h1 style="color:white;">Twosome place</h1>
        <p style="color:white;">
            둘이먹다 하나 죽어도 모르는 커피
        </p>
    </div>
</div>

<div class="jumbotron" style="background-image: url(/resources/img/jumbotron_bg4.jpg); background-size: 100%">
    <div class="container">
        <h1 style="color:white;">Black Drum</h1>
        <p style="color:white;">
            아주향긋하고 좋은 커피
        </p>
    </div>
</div>


<a href="book.soul">go to book</a>
<a href="books.soul">go to books</a>
</body>
</html>