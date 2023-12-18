using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Entities
{
    public class salesStock
    {
        public int userId {get; set; }
        public string productCode { get; set; }
        public string productName { get; set; }
        public int productQuantity { get; set; }
        public double productPrice { get ;set; }

    }
}