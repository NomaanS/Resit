using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BIZ
{
    public abstract class Person
    {
        public string Name { get; set; }
        public string Address { get; set; }
        public string County { get; set; }
        public int Age { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }

        public Person(string name, string address, string county, int age, string phone, string email)
        {
            Name = name;
            Address = address;
            County = county;
            Age = age;
            Phone = phone;
            Email = email;
        }

        public abstract string GetInfo();
    }

}
