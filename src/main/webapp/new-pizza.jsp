<%--
  Created by IntelliJ IDEA.
  User: williamtisdale
  Date: 1/21/21
  Time: 2:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Order Pizza</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%--    <link rel="stylesheet" type="text/css" href="css/pizza-order.css">--%>
    <style>
        html {
            min-width: 320px;
        }
        @media screen and (max-width: 525px){
            .nav-tabs {
                display: flex;
                flex-direction: column;
            }
        }
    </style>
</head>
<body>

    <div class="container-fluid">
        <br>
        <h1 class="text-center">Build your own pizza!</h1>
        <br>
        <form action="/newpizza" method="POST">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true"><span class="badge badge-pill badge-secondary">1</span> Size and Crust</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false"><span class="badge badge-pill badge-secondary">2</span> Cheese and Sauce</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false"><span class="badge badge-pill badge-secondary">3</span> Toppings</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="address-tab" data-toggle="tab" href="#address" role="tab" aria-controls="address" aria-selected="false"><span class="badge badge-pill badge-secondary">4</span> Address</a>
            </li>
        </ul>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        Choose Size and Crust
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-action list-group-item-secondary ">Hand Tossed</li>
                            <li class="list-group-item">Garlic seasoned crust with a rich, buttery taste.</li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" id="size1" value="Hand Tossed - Small" checked>
                                    <label class="form-check-label" for="size1">
                                        Small (10")
                                    </label>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" id="size2" value="Hand Tossed - Medium" checked>
                                    <label class="form-check-label" for="size2">
                                        Medium (12")
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <br>
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-action list-group-item-secondary">Crispy Thin</li>
                            <li class="list-group-item">Thin enough for optimum crispy to crunchy ratio.</li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" id="size3" value="Crispy Thin - Medium" checked>
                                    <label class="form-check-label" for="size3">
                                        Medium (12")
                                    </label>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="size" id="size4" value="Crispy Thin - Large" checked>
                                    <label class="form-check-label" for="size4">
                                        Large (14")
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <br>
                        <div class="card-footer" style="display: flex; justify-content: flex-end">
                            <a href="#profile" data-toggle="tab" class="btn btn-primary" id="next">Next Step ›</a>
                        </div>
                        </div>
                </div>
            </div>
            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        Choose Cheese and Sauce
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-action list-group-item-secondary">Cheese</li>
                            <li class="list-group-item">
                                <form>
                                    <div class="form-group">
                                        <label for="how_much_c">How Much?</label>
                                        <select class="form-control" id="how_much_c" name="cheese">
                                            <option value="Light">Light</option>
                                            <option value="Normal" selected>Normal</option>
                                            <option value="Extra">Extra</option>
                                            <option value="Double">Double</option>
                                        </select>
                                    </div>
                                </form>
                            </li>
                        </ul>
                        <br>
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-action list-group-item-secondary">Sauce</li>
                            <li class="list-group-item">
                                <form>
                                    <div class="form-group">
                                        <label for="what_type">What Type?</label>
                                        <select class="form-control" id="what_type" name="sauce">
                                            <option value="Tomato">Tomato Sauce</option>
                                            <option value="Marinara" selected>Marinara Sauce</option>
                                            <option value="BBQ">BBQ Sauce</option>
                                            <option value="Alfredo">Alfredo Sauce</option>
                                        </select>
                                    </div>
                                </form>
                            </li>
                            <li class="list-group-item">
                                <form>
                                    <div class="form-group">
                                        <label for="how_much">How Much?</label>
                                        <select class="form-control" id="how_much" name="amount">
                                            <option value="Light">Light</option>
                                            <option value="Normal" selected>Normal</option>
                                            <option value="Extra">Extra</option>
                                        </select>
                                    </div>
                                </form>
                            </li>
                        </ul>
                        <br>
                        <div class="card-footer" role="group" style="display: flex; justify-content: space-between">
                            <a href="#home" data-toggle="tab" class="btn btn-primary">‹Previous Step</a>
                            <a href="#contact" data-toggle="tab" class="btn btn-primary">Next Step›</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        Choose Toppings
                    </div>
                    <div class="card-body">
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-action list-group-item-secondary">Choose Meats</li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Beef" id="beef" name="meat1">
                                    <label class="form-check-label" for="beef">
                                        Beef
                                    </label>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Ham" id="ham" name="meat2">
                                    <label class="form-check-label" for="ham">
                                        Ham
                                    </label>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Philly Steak" id="steak" name="meat3">
                                    <label class="form-check-label" for="steak">
                                        Philly Steak
                                    </label>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Bacon" id="bacon" name="meat4">
                                    <label class="form-check-label" for="bacon">
                                        Bacon
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <br>
                        <ul class="list-group">
                            <li class="list-group-item list-group-item-action list-group-item-secondary">Choose Non-Meats</li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Green Peppers" id="peppers" name="veggie1">
                                    <label class="form-check-label" for="peppers">
                                        Green Peppers
                                    </label>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="mushrooms" id="mushrooms" name="veggie2">
                                    <label class="form-check-label" for="mushrooms">
                                        Mushrooms
                                    </label>
                                </div>

                            </li>

                            <li class="list-group-item">

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Onions" id="onions" name="veggie3">
                                    <label class="form-check-label" for="onions">
                                        Onions
                                    </label>
                                </div>
                            </li>
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="Jalapeno Peppers" id="jalapenos" name="veggie4">
                                    <label class="form-check-label" for="jalapenos">
                                        Jalapeno Peppers
                                    </label>
                                </div>
                            </li>
                        </ul>
                        <br>
                        <div class="card-footer" role="group" style="display: flex; justify-content: space-between">
                            <a href="#profile" data-toggle="tab" class="btn btn-primary">‹Previous Step</a>
                            <a href="#address" data-toggle="tab" class="btn btn-primary">Next Step›</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-pane fade" id="address" role="tabpanel" aria-labelledby="contact-tab">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        Delivery Information
                    </div>
                    <div class="card-body">
                        <div class="form-group">
                            <label for="exampleInputEmail2">Name</label>
                            <input type="text" class="form-control" id="exampleInputEmail2" aria-describedby="emailHelp" placeholder="Enter name" name="name">
                            <br>
                            <label for="exampleInputEmail3">Phone Number</label>
                            <input type="text" class="form-control" id="exampleInputEmail3" aria-describedby="emailHelp" placeholder="Enter phone number" name="phone">
                            <br>
                            <label for="exampleInputEmail1">Delivery Address</label>
                            <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter address" name="user-address">
                        </div>
                        <br>

                        <br>
                        <div class="card-footer" style="display: flex; justify-content: space-between">
                            <a href="#contact" data-toggle="tab" class="btn btn-primary">‹Previous Step</a>
                            <input type="submit" class="btn btn-primary" value="Checkout">

                        </div>
                    </div>
                </div>
            </div>
        </div>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
