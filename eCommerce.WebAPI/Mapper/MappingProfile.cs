using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.User;
using eCommerce.Entities;

namespace eCommerce.WebAPI.Mapper
{
    public class MappingProfile: Profile
    {
        public MappingProfile()
        {
            CreateMap<userToLoginDTO, User>();
            CreateMap<userToRegisterDTO, User>();
            CreateMap<User, userToListDTO>();
        }
    }
}