using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.DTOs.User
{
    public class userToListDTO
    {
        public int UserId { get; set; }
        public string Mail { get; set; } = string.Empty;
        public string Name { get; set; } = string.Empty;
        public string Rol { get; set; } = string.Empty;
    }
}