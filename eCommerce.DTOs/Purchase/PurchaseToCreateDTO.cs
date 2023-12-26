using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.DTOs.Purchase
{
    public class PurchaseToCreateDTO
    {
        public int UserId { get; set; }        
        public string ProductCode { get; set; } = string.Empty;
    }
}