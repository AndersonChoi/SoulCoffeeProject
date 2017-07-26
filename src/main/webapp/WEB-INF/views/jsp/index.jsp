<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Hello</title>
  </head>
  <body>

   <div class="wrap">
    <div class="container">
      <h1>${title}</h1>
      <p>
        <c:if test="${not empty msg}">
          Hello ${msg}
        </c:if>

        <c:if test="${empty msg}">
          Welcome Welcome!
        </c:if>
      </p>
    </div>
  </div>

  </body>
</html>