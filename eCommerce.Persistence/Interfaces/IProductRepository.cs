using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;

namespace eCommerce.Persistence.Interfaces
{
    public interface IProductRepository
    {
        Task<SalesStock> CreateProduct(SalesStock productoStock);
    }
}