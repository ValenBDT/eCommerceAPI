using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Entities
{
    public class User
    {
        public int userId { get; set; }
        public string mail { get; set; }
        public string name { get; set; }
        public string rol { get; set; }
        public string password { get; set; }    
    }
}