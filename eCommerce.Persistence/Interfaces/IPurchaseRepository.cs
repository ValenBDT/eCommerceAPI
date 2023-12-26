using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.PurchaseResume;
using eCommerce.Entities;

namespace eCommerce.Persistence.Interfaces
{
    public interface IPurchaseRepository
    {
        Task<Purchase> CreatePurchase (Purchase purchase);

        Task<PurchaseResume> GetPurchaseResume(int purchaseId);
    }
}