using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BIZ
{
    public class Student : Person
    {
        public int StudentNumber { get; set; }

        public Student(string name, string address, string county, int age, string phone, string email, int studentNumber)
            : base(name, address, county, age, phone, email)
        {
            StudentNumber = studentNumber;
        }

        public override string GetInfo()
        {
            return $"Student Name: {Name}, Student Number: {StudentNumber}, Address: {Address}, County: {County}, Age: {Age}, Phone: {Phone}, Email: {Email}";
        }
    }

}
