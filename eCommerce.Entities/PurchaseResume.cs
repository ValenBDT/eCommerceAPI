using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.Entities
{
    public class PurchaseResume
    {
        public int PurchaseId {get; set; }
        public int BuyerId { get; set; }
        public int SellerId { get; set; }
        public string BuyerName { get; set; } = string.Empty;
        public string ProductCode { get; set; } = string.Empty;
        public string ProductName { get; set; } = String.Empty;
        public double Price { get ;set; }
        public DateTime PurchaseDate { get; set; }
    }
}