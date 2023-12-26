using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.DTOs.Purchase
{
    public class PurchaseToListDTO
    {
        public int UserId { get; set; }
        public string ProductCode { get; set; } = string.Empty;
        public DateTime purchaseDate { get; set; }
    }
}