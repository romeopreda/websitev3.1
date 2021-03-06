<%--
  Created by IntelliJ IDEA.
  User: romeo
  Date: 10/20/2020
  Time: 12:04 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/stijl.css">
    <meta name="viewport" content="width=device-width, intial-scale=1.0">
    <title>Zoek Dag</title>
</head>
<body>
<header>
    <h1>Prgramma Fitness</h1>
    <nav>
        <ul>
            <li><a href= "Programma?command=home">Home</a> </li>
            <li><a href="DagenToevoegen.jsp">DagenToevoegen</a> </li>
            <li><a href="Programma?command=overzicht">Overzicht</a> </li>
            <li><a href="zoeken.jsp">Zoeken</a> </li>
        </ul>
    </nav>
</header>

<main>


    <form method="post" action="Programma?command=zoeken" novalidate>
        <fieldset>
            <legend>
                Bepaalde programma zoeken:
            </legend>
            <p class="form-group">
            <label for="dag">Dag:</label>
            <input type="text" id="dag" name="dag" required autofocus placeholder="Dag" value = "" required>

            </p>
            <c:if test="${not empty error}">
                <div class="alert alert-danger">
                    <ul>
                        <c:forEach items="${error}" var="error">
                            <li>${error}</li>
                        </c:forEach>
                    </ul>
                </div>
            </c:if>
            <input type="submit" id="Indienen" name="Indienen" value="Indienen">
        </fieldset>
    </form>

</main>
<footer>
    <ul>
        <li>Voor meer vragen : predaromeo20@yahoo.com</li>
    </ul>
</footer>

</body>
</html>
