<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order Form</title>
</head>
<body>
<form action="/pizza-order" method="POST">
    <h3>Pizza Size</h3>
    <input type="radio" name="size" id="eight" value="8 inch">
    <label for="eight">8"</label>
    <input type="radio" name="size" id="ten" value="10 inch">
    <label for="ten">10"</label>
    <input type="radio" name="size" id="fourteen" value="14 inch">
    <label for="fourteen">14"</label>
    <h3>Crust Type</h3>
    <input type="radio" name="crust" id="thin" value="thin">
    <label for="thin">Thin</label>
    <input type="radio" name="crust" id="thick" value="thick">
    <label for="thick">Thick</label>
    <hr>
    <h3>Sauce Type</h3>
    <input type="radio" name="sauce" id="marinara" value="marinara">
    <label for="marinara">Marinara</label>
    <input type="radio" name="sauce" id="bbq" value="bbq">
    <label for="bbq">BBQ</label>
    <input type="radio" name="sauce" id="alfredo" value="alfredo">
    <label for="alfredo">Alfredo</label>
    <hr>
    <h3>Meat Toppings</h3>
    <input type="checkbox" id="pepperoni" name="meat1" value="pepperoni">
    <label for="pepperoni">Pepperoni</label>
    <input type="checkbox" id="sausage" name="meat2" value="sausage">
    <label for="sausage">Sausage</label>
    <input type="checkbox" id="chicken" name="meat3" value="chicken">
    <label for="chicken">Chicken</label>
    <hr>
    <h3>Veggie Toppings</h3>
    <input type="checkbox" id="onion" name="veggie1" value="onion">
    <label for="onion">Onion</label>
    <input type="checkbox" id="bellpepper" name="veggie2" value="bell pepper">
    <label for="bellpepper">Bell Pepper</label>
    <input type="checkbox" id="blackolive" name="veggie3" value="black olives">
    <label for="blackolive">Black Olive</label>
    <hr>
    <h3>Address</h3>
    <input type="text" id="address" name="address">
    <br><br>
    <input type="submit" value="Submit Order">
</form>
</body>
</html>

