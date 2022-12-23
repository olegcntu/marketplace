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

<b>Product Name: </b>${product.title}<br>
<b>Description: </b>${product.description}<br>
<b>Prise: </b>${product.prise}<br>
<b>City: </b>${product.city}<br>
<b>Author: </b>${product.author}<br>

<form action="/product/delete/${product.id}" method="post">
    <input type="submit" value="Delete">
</form>
</body>
</html>
