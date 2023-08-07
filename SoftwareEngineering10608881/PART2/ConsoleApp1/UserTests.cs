using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using NUnit.Framework;

namespace SoftwareEngineering
{
    class UserTests
    {
        [Test]
        public void Register_ShouldReturnTrue_WhenValidUser()
        {
            // Arrange
            var user = new User();

            // Act
            bool result = user.Register("john@example.com", "password123");

            // Assert
            Assert.IsTrue(result);
        }

        [Test]
        public void Login_ShouldReturnTrue_WhenValidCredentials()
        {
            // Arrange
            var user = new User();
            user.Register("john@example.com", "password123");

            // Act
            bool result = user.Login("john@example.com", "password123");

            // Assert
            Assert.IsTrue(result);
        }
    }
}
