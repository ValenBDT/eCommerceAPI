using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Entities
{
    public class Purchase
    {
        public int userId { get; set; }
        public string productCode { get; set; }
        public DateTime purchaseDate { get; set; }
    }
}