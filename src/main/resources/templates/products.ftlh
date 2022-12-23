<!DOCTYPE html>
<html>
<head>
    <title>
        MARKETPLACE
    </title>
</head>
<body>
<h1>MARKETPLACE</h1>
<h4>goods from all over Ukraine</h4>
<form action="/" method="get">
    search by ad name:<input type="text" name="title"><br>
    <input type="submit" value="search">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.prise} ua. | <a href="/product/${product.id}">more details...</a></p>
    </div>
    <#else>
        <h3>No ad</h3>
</#list>
<h3>Create new product</h3>
<form action="/product/create" method="post">

    ad title: <input type="text" name="title"><br><br>
    ad description: <input type="text" name="description"><br><br>
    price: <input type="number" name="prise"><br><br>
    city: <input type="text" name="city"><br><br>
    author: <input type="text" name="author"><br><br>
    <input type="submit" value="Add product">
</form>
</body>
</html>
