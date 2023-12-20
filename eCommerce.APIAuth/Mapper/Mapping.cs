using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.User;
using eCommerce.Entities;

namespace eCommerce.APIAuth.Mapper
{
    public class Mapping : Profile
    {
        public Mapping()
        {
            CreateMap<userToLoginDTO, User>();
            CreateMap<userToRegisterDTO, User>();
            CreateMap<User, userToListDTO>();
        }
    }
}