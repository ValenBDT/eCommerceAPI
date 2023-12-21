using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.Product;

namespace eCommerce.Services.Interfaces
{
    public interface IProductService
    {
        Task<ProductToListDTO> CreateProduct(ProductToCreateDTO productToCreateDTO, int Idvendedor);
    }
}