<%@ Page Title="Staff" Language="C#" MasterPageFile="~/CoolWheels.master" AutoEventWireup="true" CodeBehind="StaffPage.aspx.cs" Inherits="CoolWheels.StaffPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="staff">
        <h2>Our Staff</h2>
        <div class="staff-member">
            <img src="Images/staff1.jpg" alt="Staff Member 1" />
            <h3>John Doe</h3>
            <p>Marketing Manager</p>
        </div>
        <div class="staff-member">
            <img src="Images/staff2.jpg" alt="Staff Member 2" />
            <h3>Jane Smith</h3>
            <p>Sales Representative</p>
        </div>
        <div class="staff-member">
            <img src="Images/staff3.jpg" alt="Staff Member 3" />
            <h3>Michael Johnson</h3>
            <p>Technical Support</p>
        </div>
    </div>

    <!-- Link to your CSS file -->
    <link href="staff-style.css" rel="stylesheet" />
</asp:Content>
