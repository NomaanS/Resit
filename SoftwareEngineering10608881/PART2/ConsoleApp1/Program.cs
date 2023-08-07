using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SoftwareEngineering
{
    class Program
    { 
        static void Main(string[] args)
    {
        var user = new User();

        // Register a new user
        bool registrationResult = user.Register("john@example.com", "password123");
        Console.WriteLine($"Registration Result: {registrationResult}");

        // Login with registered credentials
        bool loginResult = user.Login("john@example.com", "password123");
        Console.WriteLine($"Login Result: {loginResult}");

        // Output:
        // Registration Result: True
        // Login Result: True
        }
    }
}
