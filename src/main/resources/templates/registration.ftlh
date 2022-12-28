<!DOCTYPE html>
<html>
<head>
    <title>MARKETPLACE</title>
</head>
<body>
<h1>MARKETPLACE</h1><hr>
<h4>Registration</h4>
<form action="/registration" method="post">
    User name: <input type="text" name="name"><br><br>
    E-mail: <input type="email" name="email"><br><br>
    Telephone number: <input type="text" name="phoneNumber"><br><br>
    Password: <input type="password" name="password"><br><br>
    <input type="hidden" name="_csrf" value="${_csrf.token}">
    <input type="submit" value="Registration"/>
</form>
<#if errorMesage??>
    <h2 style="color: red">{errorMessage}</h2>
</#if>
</body>
</html>
