<%@ Page Title="Home" Language="C#" MasterPageFile="~/CoolWheels.master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="CoolWheels.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="banner">
        <video autoplay muted loop class="banner-video">
            <source src="Videos/cycling.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
    </div>

    <div class="available-selection">
        <h2 class="as-head">Available Selection</h2>
        <div class="bicycle-grid">
            <!-- ... Bicycle grid content ... -->
        </div>
    </div>

    <div class="slider">
        <div class="slides">
            <div class="slide">
                <img src="Images/women.png" alt="Women's Bicycles" />
                <h3>Women's Bicycles</h3>
                <p>Discover our collection of women's bicycles.</p>
                <button class="slider-btn">Learn More</button>
            </div>
            <div class="slide">
                <img src="Images/men2.jpg" alt="Men's Bicycles" />
                <h3>Men's Bicycles</h3>
                <p>Explore our selection of men's bicycles.</p>
                <button class="slider-btn">Learn More</button>
            </div>
            <div class="slide">
                <img src="Images/kid.png" alt="Kid's Bicycles" />
                <h3>Kid's Bicycles</h3>
                <p>Check out our range of bicycles for kids.</p>
                <button class="slider-btn">Learn More</button>
            </div>
        </div>
    </div>

    <div class="bicycle-baskets">
    <div class="bicycle-basket-image">
        <img src="Images/bike3.jpg" alt="Bicycle Basket" />
    </div>
    <div class="bicycle-basket-text">
        <h3 style="font-size:26px; font-weight:bold">Bicycle Baskets </h3>
        <p style="font-size:20px">Description: There are so many possibilities for this extra-large rattan basket, adding true utility to your bike. Fill it with groceries, a table lamp, or even your little dog.</p>
        <button style="margin-left:300px" class="shop-btn">Shop Now</button>
    </div>
</div>

    <div class="featured-products">
    <h2>Featured Products</h2>
    <div class="product-grid">
        <div class="product">
            <img src="Images/helmet.jpg" alt="Product 1" />
            <h3>Van Rysel</h3>
            <p>Our engineers have created a comfortable, lightweight, aerodynamic helmet that ventilates the cyclist's head to improve the body's thermoregulation.</p>
            <span class="product-price">$59.99</span>
            <button class="shop-btn">Shop Now</button>
        </div>
        <div class="product" >
            <img src="Images/city.jpg" alt="Product 2" />
            <h3>Elops 520</h3>
            <p>Try out this city bike from our passionate design team. Take pleasure in cycling around town</p>
            <span class="product-price" style="padding-top:20px">$349.99</span>
            <button class="shop-btn">Shop Now</button>
        </div>
        <div class="product" style="padding-top:160px"> 
            <img src="Images/kids.jpg" alt="Product 3" />
            <h3>SAN QUENTIN 20</h3>
            <p>The San Quentin 24 and 20 is for the kid looking to explore everything an offroad bike can do from singletrack to park rides to just cruising the neighborhood in style.</p>
            <span class="product-price">$1099.99</span>
            <button class="shop-btn">Shop Now</button>
        </div>
    </div>
</div>

    <div class="brands">
    <h2>Brands</h2>
    <div class="brand-row">
        <div class="brand">
            <img src="Images/Brands/brand1.png" alt="Brand 1"/>
        </div>
        <div class="brand" style="padding-top:50px">
            <img src="Images/Brands/brand2.png" alt="Brand 2"/>
        </div>
       
        <div class="brand">
            <img src="Images/Brands/brand3.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand4.png" class="center-img" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="Images/Brands/cannondale.png" alt="Brand 1" />
        </div>
        <div class="brand" style="padding-top:20px">
            <img src="Images/Brands/Giant.png" alt="Brand 2" />
        </div>

        <div class="brand" style="padding-top:50px">
            <img src="Images/Brands/merida.png" alt="Brand 2" />
        </div>

        <div class="brand" style="padding-top:50px">
            <img src="Images/Brands/orbea.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/Marin.png" alt="Brand 1" />
        </div>
        </div>
        <div class="brand-row">
        <div class="brand" style="padding-top:50px">
            <img src="Images/Brands/Specialized.png" alt="Brand 2" />
        </div>

        <div class="brand" style="padding-top:20px">
            <img src="Images/Brands/Trek.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand12.png" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="Images/Brands/brand13.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand14.png" alt="Brand 2" />
        </div>

        <div class="brand" style="padding-top:50px">
            <img src="Images/Brands/brand15.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand16.png" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="Images/Brands/brand17.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand6.png" alt="Brand 2" />
        </div>
        </div>
    </div>

   


    
<script src="jquery-3.7.0.min.js"></script>
<script>
    $(document).ready(function () {
        var $slides = $('.slide');
        var slideIndex = 0;

        function showSlide(index) {
            $slides.hide();
            $slides.eq(index).fadeIn();
        }

        function nextSlide() {
            slideIndex = (slideIndex + 1) % $slides.length;
            showSlide(slideIndex);
        }

        showSlide(slideIndex);
        setInterval(nextSlide, 3000);
    });
</script>

</asp:Content>
