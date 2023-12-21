using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.Product;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using eCommerce.Services.Interfaces;

namespace eCommerce.Services.Services
{
    public class ProductService : IProductService
    {
        private readonly IProductRepository _productRepository;
        private readonly IMapper _mapper;

        public ProductService(IProductRepository productRepository, IMapper mapper)
        {
            _mapper = mapper;
            _productRepository = productRepository;
        }

        public async Task<ProductToListDTO> CreateProductAsync(ProductToCreateDTO productToCreateDTO, int Idvendedor)
        {

            if(await _productRepository.GetProductByCodeAsync(productToCreateDTO.Code) is not null) return null;

            var productToCreate = _mapper.Map<SalesStock>(productToCreateDTO);
            productToCreate.Idvendedor = Idvendedor;
            var productCreated = await _productRepository.CreateProductAsync(productToCreate);

            if(productCreated is null) return null;

            var productCreatedDTO = _mapper.Map<ProductToListDTO>(productCreated);

            return productCreatedDTO;

        }

        public async Task<bool> DeleteProductAsync(string code){
            if(!await _productRepository.ExistProductAsync(code)) return false;

            await _productRepository.DeleteProductAsync(code);
            return true;
        }


    }
}