<!DOCTYPE html>
<html>
<head>
    <title>
        MARKETPLACE
    </title>
</head>
<body>
<h1>MARKETPLACE</h1>
<h4>product details</h4>

<#list images as img>
    <img src="/images/${img.id}" height="60px"/><br><br>
</#list>
<b>Product Name: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Prise: </b>${product.price}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.author}<br>
<hr>
<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete"/>
</form>
</body>
</html>
