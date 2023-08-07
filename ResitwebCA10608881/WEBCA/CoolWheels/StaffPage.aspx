<%@ Page Title="Staff" Language="C#" MasterPageFile="~/CoolWheels.master" AutoEventWireup="true" CodeBehind="StaffPage.aspx.cs" Inherits="CoolWheels.StaffPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="staff">
        <h2>Meet Our Team</h2>
        <div class="staff-member">
            <div class="staff-info">
                <img src="Images/staff1.jpg" alt="Staff Member 1" />
                <div class="staff-details">
                    <h3>John Doe</h3>
                    <p>Marketing Manager</p>
                    <p>Email: john.doe@ie.CoolWheels.com</p>
                    <p>Phone: +1 (555) 123-4567</p>
                </div>
            </div>
            <p class="staff-bio">
                John Doe is an experienced marketing manager with a passion for delivering exceptional results. He has worked in the industry for over 10 years and is dedicated to promoting the best products and services to our customers.
            </p>
        </div>
        <div class="staff-member">
            <div class="staff-info">
                <img src="Images/staff2.jpg" alt="Staff Member 2" />
                <div class="staff-details">
                    <h3>Jane Smith</h3>
                    <p>Sales Representative</p>
                    <p>Email: jane.smith@ie.CoolWheels.com</p>
                    <p>Phone: +1 (555) 987-6543</p>
                </div>
            </div>
            <p class="staff-bio">
                Jane Smith is a dynamic sales representative who brings enthusiasm and a customer-focused approach to every interaction. With her excellent communication skills, she ensures our customers have a seamless experience.
            </p>
        </div>
        <div class="staff-member">
            <div class="staff-info">
                <img src="Images/staff3.jpg" alt="Staff Member 3" />
                <div class="staff-details">
                    <h3>Michael Johnson</h3>
                    <p>Technical Support</p>
                    <p>Email: michael.johnson@ie.CoolWheels.com</p>
                    <p>Phone: +1 (555) 789-0123</p>
                </div>
            </div>
            <p class="staff-bio">
                Michael Johnson is a skilled technical support specialist who loves solving complex issues. He ensures our customers receive top-notch support and is always ready to go the extra mile to help them.
            </p>
        </div>
        
    </div>

    
    <link href="staff-style.css" rel="stylesheet" />
</asp:Content>
