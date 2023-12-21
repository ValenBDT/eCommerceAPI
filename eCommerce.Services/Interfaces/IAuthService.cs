using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.User;
using eCommerce.Entities;

namespace eCommerce.Services.Interfaces
{
    public interface IAuthService
    {
        Task<userToListRegisterDTO> Register(userToRegisterDTO userToRegisterDTO);
        Task<userToListLoginDTO> Login(userToLoginDTO userToLoginDTO);

    }
}