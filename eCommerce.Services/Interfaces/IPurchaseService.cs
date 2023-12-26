using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.Purchase;
using eCommerce.DTOs.PurchaseResume;

namespace eCommerce.Services.Interfaces
{
    public interface IPurchaseService
    {
        Task<PurchaseToListDTO> CreatePurchase(PurchaseToCreateDTO purchase);
        Task<PurchaseResumeListDTO> GetPurchaseResume(int purchaseId);
    }
}