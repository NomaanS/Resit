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
        <h3>Bicycle Baskets</h3>
        <p>Description: There are so many possibilities for this extra-large rattan basket, adding true utility to your bike. Fill it with groceries, a table lamp, or even your little dog.</p>
        <button class="shop-btn">Shop Now</button>
    </div>
</div>

    <div class="featured-products">
    <h2>Featured Products</h2>
    <div class="product-grid">
        <div class="product">
            <img src="Images/bike1.jpg" alt="Product 1" />
            <h3>Mountain Bike</h3>
            <p>Conquer any trail with our high-performance mountain bikes.</p>
            <span class="product-price">$599.99</span>
            <button class="shop-btn">Shop Now</button>
        </div>
        <div class="product">
            <img src="Images/bike2.jpg" alt="Product 2" />
            <h3>City Cruiser</h3>
            <p>Experience urban cycling in style and comfort.</p>
            <span class="product-price">$349.99</span>
            <button class="shop-btn">Shop Now</button>
        </div>
        <div class="product">
            <img src="Images/bike3.jpg" alt="Product 3" />
            <h3>Kids' Bike</h3>
            <p>The perfect bikes for your little adventurers.</p>
            <span class="product-price">$199.99</span>
            <button class="shop-btn">Shop Now</button>
        </div>
    </div>
</div>

    <div class="brands">
    <h2>Brands</h2>
    <div class="brand-row">
        <div class="brand">
            <img src="Images/Brands/brand1.png" alt="Brand 1">
        </div>
        <div class="brand">
            <img src="Images/Brands/brand2.png" alt="Brand 2" />
        </div>
       
        <div class="brand">
            <img src="Images/Brands/brand3.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand4.png" class="center-img" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="D:\Resit\database-master\database-master\CoolWheels\img\Brands\cannondale.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="D:\Resit\database-master\database-master\CoolWheels\img\Brands\Giant.jpeg" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="D:\Resit\database-master\database-master\CoolWheels\img\Brands\Marin.webp" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="D:\Resit\database-master\database-master\CoolWheels\img\Brands\merida.jpg" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="D:\Resit\database-master\database-master\CoolWheels\img\Brands\orbea.png" alt="Brand 1" />
        </div>
        </div>
        <div class="brand-row">
        <div class="brand">
            <img src="D:\Resit\database-master\database-master\CoolWheels\img\Brands\Specialized.jpg" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="D:\Resit\database-master\database-master\CoolWheels\img\Brands\Trek.png" alt="Brand 1" />
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

        <div class="brand">
            <img src="Images/Brands/brand15.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand16.png" alt="Brand 2" />
        </div>

        <div class="brand">
            <img src="Images/Brands/brand17.png" alt="Brand 1" />
        </div>
        <div class="brand">
            <img src="Images/Brands/brand18.png" alt="Brand 2" />
        </div>
        </div>
    </div>

    <footer class="footer">
    <div class="payment-icons">
        <img src="Images/Pay/payment.svg" alt="Apple Pay" class="payment-icon" />
        <img src="Images/Pay/payment-2.svg" alt="Apple Pay" class="payment-icon" />
        <img src="Images/Pay/payment-3.svg" alt="Apple Pay" class="payment-icon" />
        <img src="Images/Pay/payment-4.svg" alt="Apple Pay" class="payment-icon" />
        <img src="Images/Pay/payment-5.svg" alt="Apple Pay" class="payment-icon" />
        <img src="Images/Pay/payment-6.svg" alt="Apple Pay" class="payment-icon" />
        <img src="Images/Pay/payment-7.svg" alt="Apple Pay" class="payment-icon" />
        
    </div>
    </footer>


    
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
