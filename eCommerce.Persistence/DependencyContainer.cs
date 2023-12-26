
using eCommerce.Persistence;
using eCommerce.Persistence.Interfaces;
using eCommerce.Persistence.Repositories;
using Microsoft.Extensions.DependencyInjection;

namespace eCommerce.Persistence
{
    public static class DependencyContainer
    {
        public static IServiceCollection AddRepositories(
            this IServiceCollection Services
        )
        {
            Services.AddScoped<IPurchaseRepository, PurchaseRepository>();
            Services.AddScoped<IAuthRepository, AuthRepository>();
            Services.AddScoped<IProductRepository, ProductRepository>();

            return Services;
        }

    }
}