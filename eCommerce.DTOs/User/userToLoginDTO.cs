using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.DTOs.User
{
    public class userToLoginDTO
    {
        public string Mail { get; set; } = String.Empty;
        public string Password { get; set; } = String.Empty;
    }
}