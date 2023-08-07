using System;
using System.Data;
using System.Data.SqlClient;

namespace CoolWheels
{
    public partial class Products : System.Web.UI.Page
    {
       
        private string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\webdev.mdf;Integrated Security=True";

        protected void Page_Init(object sender, EventArgs e)
        {
           
        }

        protected void BuyMountainBike_Click(object sender, EventArgs e)
        {
            BuyProduct("Rail 9.7 Gen2", 7289.10m);
        }

        protected void BuyRoadBike_Click(object sender, EventArgs e)
        {
            BuyProduct("Madone SLR 6 Gen7", 8199.00m);
        }

        protected void BuyHybridBike_Click(object sender, EventArgs e)
        {
            BuyProduct("Hybrid Bike", 2299.99m);
        }


        private void BuyProduct(string productName, decimal price)
        {
            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                  
                    SqlCommand command = new SqlCommand("INSERT INTO Purchases (ProductName, Price, PurchaseDate) VALUES (@ProductName, @Price, @PurchaseDate)", connection);
                    command.Parameters.AddWithValue("@ProductName", productName);
                    command.Parameters.AddWithValue("@Price", price);
                    command.Parameters.AddWithValue("@PurchaseDate", DateTime.Now);

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        
                        Response.Write("<script>alert('Purchase successful!');</script>");
                    }
                    else
                    {
                       
                        Response.Write("<script>alert('Purchase failed!');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('An error occurred: " + ex.Message + "');</script>");
            }
        }


            protected void CalculateButton_Click(object sender, EventArgs e)
            {
                if (int.TryParse(quantityTextBox.Text, out int quantity))
                {
                    if (productList.SelectedValue != null && decimal.TryParse(productList.SelectedValue, out decimal price))
                    {
                        decimal totalCost = quantity * price;
                        // Assume a fixed tax rate of 10%
                        decimal tax = totalCost * 0.1m;

                        decimal totalWithTax = totalCost + tax;
                        
                        totalCostLabel.Text = $"Total Cost (including tax): {totalWithTax:C}";
                    }
                    else
                    {
                        totalCostLabel.Text = "Invalid product selection.";
                    }
                }
                else
                {
                    totalCostLabel.Text = "Invalid quantity.";
                }
            }
        }
    }

