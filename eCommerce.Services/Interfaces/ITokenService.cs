using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;

namespace eCommerce.Services.Interfaces
{
    public interface ITokenService
    {
        string CreateToken(User user);
    }
}