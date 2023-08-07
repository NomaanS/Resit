<%@ Page Title="Products" Language="C#" MasterPageFile="~/CoolWheels.master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="CoolWheels.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <link rel="stylesheet" href="styles.css" />

<div class="featured-products">

    <h2>Featured Products</h2>
    <div class="product">
    <img src="Images/bike1.jpg" alt="Mountain Bike" />
    <h3>Rail 9.7 Gen2</h3>
    <p>Rail 9.7 is a long-travel carbon electric mountain bike that gets you to the fun stuff faster. It feels and rides just like our rowdiest trail bikes, and it's built with the same trail-specific tech. The difference is that the powerful Bosch drive system zips up climbs so you can spend less time grinding and more time getting rad./p>
    <p class="price">$7289.10</p>
            <asp:Button ID="buyMountainBike" runat="server" Text="Buy Now" OnClick="BuyMountainBike_Click" />
</div>

    <div class="product">
        <img src="Images/bike2.jpg" alt="Road Bike" />
        <h3>Madone SLR 6 Gen7</h3>
        <p>the Madone SLR 6 is a road racing machine that's serious about speed from the second it hits the tarmac. It all starts with an 800 Series OCLV Carbon frame with exclusive IsoFlow technology that adds an aerodynamic advantage, cuts weight and smooths the road ahead, then is topped with workhorse components, like Shimano's wireless electronic 105 Di2 12-speed drivetrain to handle race day and shifting clean when the going gets tough. Plus, it features upgrades that matter, like carbon wheels with a deep rim for even more aerodynamic gains./p>
        <p class="price">$8199.00</p>
                    <asp:Button ID="buyRoadBike" runat="server" Text="Buy Now" OnClick="BuyRoadBike_Click" />

    </div>

    <div class="product">
        <img src="Images/bike3.jpg" alt="Hybrid"
        <h3>Dual Sport+ 2</h3>
        <p>The Dual Sport+ 2 is a lightweight and capable hybrid electric bike that’s designed for adventure on the road and light trails. It has an intuitive and natural feeling pedal-assist system that makes exploring your surroundings more fun and cruising up hills a breeze. Plus, stiff wheels and wide tyres give you confidence on varied terrain.</p>
        <p class="price">2299.99</p>
                    <asp:Button ID="buyHybridBike" runat="server" Text="Buy Now" OnClick="BuyHybridBike_Click" />

    </div>
</div>

<div class="product-grid">
    <div class="product">
        <img src="Images/bike3.jpg" alt="Hybrid Bike" />
        <h3>Hybrid Bike</h3>
        <p>Experience versatility with our hybrid bikes.</p>
        <p class="price">$449.99</p>
    </div>
    <div class="product">
        <img src="Images/bike4.jpg" alt="Electric Bike" />
        <h3>Electric Bike</h3>
        <p>Effortless rides with our electric bikes.</p>
        <p class="price">$799.99</p>
    </div>
    <div class="product">
        <img src="Images/bike3.jpg" alt="Hybrid Bike" />
        <h3>Hybrid Bike</h3>
        <p>Experience versatility with our hybrid bikes.</p>
        <p class="price">$449.99</p>
    </div>
    <div class="product">
        <img src="Images/bike4.jpg" alt="Electric Bike" />
        <h3>Electric Bike</h3>
        <p>Effortless rides with our electric bikes.</p>
        <p class="price">$799.99</p>
    </div>
    <div class="product">
        <img src="Images/bike3.jpg" alt="Hybrid Bike" />
        <h3>Hybrid Bike</h3>
        <p>Experience versatility with our hybrid bikes.</p>
        <p class="price">$449.99</p>
    </div>
    <div class="product">
        <img src="Images/bike4.jpg" alt="Electric Bike" />
        <h3>Electric Bike</h3>
        <p>Effortless rides with our electric bikes.</p>
        <p class="price">$799.99</p>
    </div>
    <div class="product">
        <img src="Images/bike3.jpg" alt="Hybrid Bike" />
        <h3>Hybrid Bike</h3>
        <p>Experience versatility with our hybrid bikes.</p>
        <p class="price">$449.99</p>
    </div>
    <div class="product">
        <img src="Images/bike4.jpg" alt="Electric Bike" />
        <h3>Electric Bike</h3>
        <p>Effortless rides with our electric bikes.</p>
        <p class="price">$799.99</p>
    </div>

</div>

    <!-- Calculator Form -->
<div class="calculator">
    <h2>Order Calculator</h2>
    <p>Select a product and enter the quantity:</p>
    <asp:DropDownList ID="productList" runat="server">
        <asp:ListItem Text="Mountain Bike" Value="499.99"></asp:ListItem>
        <asp:ListItem Text="Road Bike" Value="599.99"></asp:ListItem>
    </asp:DropDownList>
    <br />
    Quantity: <asp:TextBox ID="quantityTextBox" runat="server" CssClass="quantity-input"></asp:TextBox>
    <br />
<asp:Button ID="calculateButton" CssClass="calculatorbtn" runat="server" Text="Calculate" OnClick="CalculateButton_Click" />
    <p>Total Cost: <asp:Label ID="totalCostLabel" runat="server"></asp:Label></p>
</div>

    <script>
        
    </script>

</asp:Content>
