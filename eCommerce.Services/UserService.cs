using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using eCommerce.Services.Interfaces;

namespace eCommerce.Services
{
    public class UserService : IUserService
    {  
        private readonly IUserRepository _userRepository;
        public UserService(IUserRepository userRepository)
        {
            _userRepository = userRepository;
        }

        public async Task<IEnumerable<User>> GetAllAsync(){
            return await _userRepository.GetAllAsync();
        }

    }
}