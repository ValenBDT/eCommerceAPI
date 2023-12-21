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

        public async Task<ProductToListDTO> CreateProduct(ProductToCreateDTO productToCreateDTO, int Idvendedor)
        {
            var productToCreate = _mapper.Map<SalesStock>(productToCreateDTO);
            productToCreate.Idvendedor = Idvendedor;
            var productCreated = await _productRepository.CreateProduct(productToCreate);

            if(productCreated is null) return null;

            var productCreatedDTO = _mapper.Map<ProductToListDTO>(productCreated);

            return productCreatedDTO;

        }


    }
}