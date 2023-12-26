using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.Product;
using eCommerce.DTOs.Purchase;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using eCommerce.Services.Interfaces;

namespace eCommerce.Services.Services
{
    public class ProductService : IProductService
    {
        private readonly IAuthRepository _authRepository;
        private readonly IProductRepository _productRepository;
        private readonly IMapper _mapper;

        public ProductService(IProductRepository productRepository, IMapper mapper, IAuthRepository authRepository)
        {
            _mapper = mapper;
            _productRepository = productRepository;
            _authRepository = authRepository;
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

        public async Task<IEnumerable<ProductToListDTO>> GetAllProductsAsync()
        {
            var products = await _productRepository.GetAllProductsAsync();

            var productList = _mapper.Map<List<ProductToListDTO>>(products);
            return productList;
        }

        public async Task<IEnumerable<ProductToListDTO>> GetAllProductsBySellerAsync(int id)
        {
            var user = await _authRepository.GetUserById(id);

            if(user is null) return null;

            if(user.Rol != "Vendedor") return null;

            var products = await _productRepository.GetAllProductsBySellerAsync(user.UserId);

            var productsList = _mapper.Map<List<ProductToListDTO>>(products);

            return productsList;
        }

        public async Task<ProductToListDTO> GetProductAsync(string code){
            var product = await _productRepository.GetProductByCodeAsync(code);
            if(product is null) return null;
            if(product.Quantity <= 0) return null;
            var productToList = _mapper.Map<ProductToListDTO>(product);
            return productToList;
        }

        public async Task<ProductToListDTO> UpdateProductAsync(ProductToUpdateDTO productToUpdateDTO, int Idvendedor)
        {
            var productToUpdate = await _productRepository.GetProductByCodeAsync(productToUpdateDTO.Code);

            if(productToUpdate is null) return null;

            if(productToUpdate.Idvendedor != Idvendedor) return null;

            productToUpdate.Price = productToUpdateDTO.Price;
            productToUpdate.Quantity = productToUpdateDTO.Quantity;
            productToUpdate.Name = productToUpdateDTO.Name;

            var productUpdated = await _productRepository.UpdateProductAsync(productToUpdate);

            if(productUpdated is null) return null;

            var productUpdatedList = _mapper.Map<ProductToListDTO>(productUpdated); 

            return productUpdatedList;
        }
    }
}