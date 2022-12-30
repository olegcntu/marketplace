<!DOCTYPE html>
<html>
<head>
    <title>MARKETPLACE</title>
</head>
<body>
<h1>MARKETPLACE</h1><hr>
<h3>detailed information</h3>
<b>Telephone: </b>${user.phoneNumber}<br>
<b>E-mail: </b>${user.email}<br>

<h4>User products ${user.name}</h4>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} ua. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
    <#else>
    <h3>No products</h3>
</#list>
<#if errorMesage??>
    <h2 style="color: red">{errorMessage}</h2>
</#if>
</body>
</html>
