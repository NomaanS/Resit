<%@ Page Title="FAQ" Language="C#" MasterPageFile="~/CoolWheels.master" AutoEventWireup="true" CodeBehind="FAQPage.aspx.cs" Inherits="CoolWheels.FAQPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="faq">
        <h2>Frequently Asked Questions</h2>
        <ul class="faq-list">
            <li>
                <h3>How do I choose the right cycle size for myself?</h3>
                <p>Selecting the correct cycle size involves considering your height and inseam measurements. Check our size chart or consult with our experts to find the perfect fit for you.</p>
            </li>
            <li>
                <h3>What types of cycles do you offer?</h3>
                <p>We offer a wide variety of cycles, including mountain bikes, road bikes, hybrid bikes, and more. You can find the perfect cycle based on your preferred riding style and terrain.</p>
            </li>
            <li>
                <h3>How often should I get my cycle serviced?</h3>
                <p>Regular maintenance is essential for optimal performance. We recommend getting your cycle serviced every 6 months or after 1,000 miles of riding, whichever comes first.</p>
            </li>
            <li>
                <h3>Can I test ride a cycle before purchasing?</h3>
                <p>Absolutely! Visit our store, and our friendly staff will be more than happy to arrange a test ride for you to experience the cycle firsthand.</p>
            </li>
            <li>
                <h3>Do you offer warranty on your cycles?</h3>
                <p>Yes, all our cycles come with a standard manufacturer's warranty. Please refer to the product details for specific warranty information.</p>
            </li>
            <li>
                <h3>How can I track my order?</h3>
                <p>Once your order is shipped, you will receive a tracking number via email. You can use this number to track the status of your delivery.</p>
            </li>
            <li>
                <h3>What payment methods do you accept?</h3>
                <p>We accept various payment methods, including credit cards, debit cards, PayPal, and more. You can choose the most convenient option at checkout.</p>
            </li>
            <li>
                <h3>Are there any assembly instructions included with the cycle?</h3>
                <p>Yes, your cycle will come with detailed assembly instructions. If you need further assistance, feel free to reach out to our support team.</p>
            </li>
            <li>
                <h3>Do you offer international shipping?</h3>
                <p>Currently, we only offer shipping within the country. However, we are working on expanding our services to other countries in the near future.</p>
            </li>
            <li>
                <h3>What is your return policy?</h3>
                <p>If you're not satisfied with your purchase, you can return the cycle within 30 days for a full refund or exchange. Please review our return policy for more details.</p>
            </li>
            <!-- Add more FAQ items here -->
        </ul>
    </div>

    <!-- Link to your CSS file -->
    <link href="faq-style.css" rel="stylesheet" />
</asp:Content>
