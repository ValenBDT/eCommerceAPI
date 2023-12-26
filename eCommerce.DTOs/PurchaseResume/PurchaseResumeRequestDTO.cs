using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerce.DTOs.PurchaseResume
{
    public class PurchaseResumeRequestDTO
    {
        public int PurchaseId { get; set; }
        public string BuyerName { get; set; } = string.Empty;
        public string ProductName { get; set; } = string.Empty;
        public double Price { get; set; }
    }
}