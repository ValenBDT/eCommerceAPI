using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.Purchase;
using eCommerce.DTOs.PurchaseResume;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using eCommerce.Persistence.Repositories;
using eCommerce.Services.Interfaces;

namespace eCommerce.Services.Services
{
    public class PurchaseService : IPurchaseService
    {
        private readonly IAuthRepository _authRepository;
        private readonly IProductRepository _productRepository;

        private readonly IPurchaseRepository _purchaseRepository;

        private readonly IMapper _mapper;

        public PurchaseService(IAuthRepository authRepository, IProductRepository productRepository, IMapper mapper, IPurchaseRepository purchaseRepository)
        {
            _authRepository = authRepository;
            _productRepository = productRepository;
            _purchaseRepository = purchaseRepository;
            _mapper = mapper;
        }
        public async Task<PurchaseToListDTO> CreatePurchase(PurchaseToCreateDTO purchaseToCreate)
        {
            var user = await _authRepository.GetUserById(purchaseToCreate.UserId);
            if(user is null) return null;
            if(user.Rol != "Comprador") return null;

            var product = await _productRepository.GetProductByCodeAsync(purchaseToCreate.ProductCode);
            if(product is null) return null;
            if(product.Quantity <= 0) return null;

            var purchase = _mapper.Map<Purchase>(purchaseToCreate);

            var purchaseCreated = await _purchaseRepository.CreatePurchase(purchase);
            if(purchaseCreated is null) return null;

            var PurchaseList = _mapper.Map<PurchaseToListDTO>(purchaseCreated);

            return PurchaseList;
        }

            //Podria validar que exista el producto, el comprador, que tenga tal rol, que el producto tenga tal precio, etc. Pero
            //decidi simplemente devolver un null si es que no lo encuentra.
        public async Task<PurchaseResumeListDTO> GetPurchaseResume(int purchaseId)
        {
            var purchaseResume = await _purchaseRepository.GetPurchaseResume(purchaseId);

            if(purchaseResume is null) return null;

            var purchaseResumeList = _mapper.Map<PurchaseResumeListDTO>(purchaseResume);

            return purchaseResumeList;
        }
    }
}