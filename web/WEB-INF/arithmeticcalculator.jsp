<%-- 
    Document   : arithmeticcalculator
    Created on : 29-Jan-2023, 9:17:30 PM
    Author     : reda_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Arithmetic Calculator</title>

    </head>

    <body>

        <h1>Arithmetic Calculator</h1>

        <form action="arithmeticcalculator" method="post">

            First: <input type="text" name="firstNum" value="${firstNum}"><br>

            Second: <input type="text" name="secondNum" value="${secondNum}"><br>

            <input type="submit" value="+" name="operation">

            <input type="submit" value="-" name="operation">

            <input type="submit" value="*" name="operation">

            <input type="submit" value="%" name="operation">



        </form>

        Result: <p>${result}</p>

        <a href="agecalculator">Age Calculator</a>

    </body>

</html>

