using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.DTOs.User
{
    public class userToRegisterDTO
    {
        public string Name { get; set; } = string.Empty;
        public string Mail { get; set; } = string.Empty;
        public string Rol { get; set; } = string.Empty;
        public string Password { get; set; } = string.Empty;
    }
}