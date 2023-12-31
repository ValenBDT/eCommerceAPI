using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;

namespace eCommerce.Persistence.Interfaces
{
    public interface IProductRepository
    {
        Task<SalesStock> CreateProductAsync(SalesStock productoStock);
        Task DeleteProductAsync(string code );
        Task<bool> ExistProductAsync(string code);
        Task<SalesStock> GetProductByCodeAsync(string code);
        Task<SalesStock> UpdateProductAsync(SalesStock productoStock);
        Task<IEnumerable<SalesStock>> GetAllProductsAsync();
        Task<IEnumerable<SalesStock>> GetAllProductsBySellerAsync(int id);
    }
}