using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BIZ
{
    public class Lecturer : Person
    {
        public decimal Pay { get; set; }

        public Lecturer(string name, string address, string county, int age, string phone, string email, decimal pay)
            : base(name, address, county, age, phone, email)
        {
            Pay = pay;
        }

        public override string GetInfo()
        {
            return $"Lecturer Name: {Name}, Pay: {Pay:C}, Address: {Address}, County: {County}, Age: {Age}, Phone: {Phone}, Email: {Email}";
        }
    }

}
