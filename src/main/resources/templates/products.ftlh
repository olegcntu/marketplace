<!DOCTYPE html>
<html>
<head>
    <title>
        MARKETPLACE
    </title>
</head>
<body>
<h1>MARKETPLACE</h1>
<hr>
<#if user.email??>
    <h3>Use name: <i>${user.name}</i></h3>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="log out">
    </form>
    <#if user.isAdmin()>
        <a href="/admin">admin panel</a>
    </#if>
<#else >
    <a href="/login">Enter</a>
</#if>
<h4>goods from all over Ukraine</h4>
<form action="/" method="get">
    search by ad name:<input type="text" name="title"><br>
    <input type="submit" value="search">
</form>
<#list products as product>
    <div>
        <p><b>${product.title}</b> ${product.price} ua. | <a href="/product/${product.id}">Подробнее...</a></p>
    </div>
<#else>
    <h3>No ad</h3>
</#list>
<#if user.email??>
    <hr>
    <h3>Create new product</h3>
    <form action="/product/create" method="post" enctype="multipart/form-data">
        ad title: <input type="text" name="title"/><br><br>
        ad description: <input type="text" name="description"/><br><br>
        price: <input type="number" name="price"/><br><br>
        city: <input type="text" name="city"/><br><br>
        First photo: <input type="file" name="file1"/><br><br>
        Second photo: <input type="file" name="file2"/><br><br>
        Third photo: <input type="file" name="file3"/><br><br>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Добавить товар"/>
    </form>
</#if>
</body>
</html>
