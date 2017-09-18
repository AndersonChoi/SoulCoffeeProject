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
    <link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/earlyaccess/hanna.css">
    <link rel="stylesheet" href="/resources/css/soulcoffee.css">
    <link rel="stylesheet" href="/resources/css/soulcoffee.font.css">
    <script src="/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript">

        function initializePage() {
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

        }

        $(window).load(function () {
            initializePage();
        });

        setInterval(function () {
            var top = $(window).scrollTop();
            var topPercentage = 50;
            var titleTopMargin = 10;
            if (top - 200 < 0) {
                topPercentage = (200 - top) / 200 * 100;
                $(".fixbar").css("height", 200 - (100 - topPercentage) * 1.5);
                $(".center_title").css("margin-top", titleTopMargin - (50 - topPercentage));
            } else {
                $(".fixbar").css("height", 200 - (100 - 0) * 1.5);
                $(".center_title").css("margin-top", titleTopMargin - (40 - 0));
            }
        }, 1);


    </script>
</head>
<body  id="topPage">
<div class="fixbar">
    <div class="center_title">
        <span class="title_top">THE</span>
        <br>
        <span class="title_middle">Soul Coffee</span>
        <br>
        <span class="title_bottom">| FOR SEOUL SQUARE |</span>
    </div>
</div>
<div class="main">
    <c:forEach var="cafe" items="${cafes}">
        <div class="main_title_background main_button" onclick="location.href = '/storeDetail.soul?cafeNo=${cafe.cafe_seq_no}';"
             style="background-image: url(/resources/img/${cafe.cafe_seq_no}.jpg); ">
            <div class="main_dim">
                <div class="main_title">
                    <h3 class="cafe_title">${cafe.cafe_nm}</h3>
                    <p class="text-left cafe_road">${cafe.road_addr_dtls}</p>
                </div>
                <div class="discount_title">
                    <c:if test="${cafe.emp_dsc_yn eq 'Y'}">
                        <span class="text-left cafe_benefit">${cafe.emp_dsc_dtls}</span>
                    </c:if>
                    <c:if test="${cafe.pkg_dsc_yn eq 'Y'}">
                        <span class="text-left cafe_benefit">${cafe.pkg_dsc_dtls}</span>
                    </c:if>
                    <c:if test="${cafe.time_dsc_yn eq 'Y'}">
                        <span class="text-left cafe_benefit">${cafe.time_dsc_dtls}</span>
                    </c:if>
                </div>
            </div>
        </div>
    </c:forEach>
</div>

<hr>
<footer class="container-fluid text-center">
    <a href="#topPage" title="To Top">
        <span class="glyphicon glyphicon-chevron-up"></span>
    </a>
</footer>

</body>
</html>