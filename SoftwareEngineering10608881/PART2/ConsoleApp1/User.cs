using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace SoftwareEngineering
{
    public class User
    {
        public string Email { get; set; }
        public string Password { get; set; }

        public bool Register(string email, string password)
        {
            // Your code to register the user
            // For simplicity, we assume successful registration here
            Email = email;
            Password = password;
            return true;
        }

        public bool Login(string email, string password)
        {
            // Your code to authenticate the user
            // For simplicity, we assume successful login here
            return Email == email && Password == password;
        }

    }
}
