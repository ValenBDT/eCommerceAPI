using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.Product;

namespace eCommerce.Services.Interfaces
{
    public interface IProductService
    {
        Task<ProductToListDTO> CreateProductAsync(ProductToCreateDTO productToCreateDTO, int Idvendedor);
        Task<bool> DeleteProductAsync(string code);
        Task<ProductToListDTO> GetProductAsync(string code);
    }
}