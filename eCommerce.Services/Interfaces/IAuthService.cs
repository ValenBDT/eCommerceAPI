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
        Task<userToListDTO> Register(userToRegisterDTO userToRegisterDTO);
        Task<userToListDTO> Login(userToLoginDTO userToLoginDTO);

    }
}