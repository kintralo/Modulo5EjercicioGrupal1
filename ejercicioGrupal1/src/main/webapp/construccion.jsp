<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>JSP - Hello World</title>
  <link
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
          rel="stylesheet"
          integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
          crossorigin="anonymous">
</head>
<body>
<jsp:include page='header.jsp'>
  <jsp:param name='title' value='Welcome'/>
</jsp:include>
<section>
  <h1 style='text-align: center'>SECCIÓN EN CONSTRUCCIÓN</h1>

</section>

<jsp:include page='footer.jsp'>
  <jsp:param name='title' value='Welcome'/>
</jsp:include>



</body>
</html>