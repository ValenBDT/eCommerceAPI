using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;

namespace eCommerce.Persistence.Interfaces
{
    public interface IAuthRepository
    {
        Task<User> Register(User user);
        Task<User> Login(string email, string password);
        Task<User> GetUserByMail(string email);

        Task<User> GetUserById(int id);
    }
}