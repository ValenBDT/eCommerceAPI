using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Entities
{
    public class SalesStock
    {
        public int Idvendedor {get; set; }
        public string Code { get; set; } = String.Empty;
        public string Name { get; set; } = String.Empty;
        public int Quantity { get; set; }
        public double Price { get ;set; }

    }
}