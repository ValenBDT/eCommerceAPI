using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.Product;
using eCommerce.DTOs.Purchase;
using eCommerce.DTOs.PurchaseResume;
using eCommerce.DTOs.User;
using eCommerce.Entities;

namespace eCommerce.Services.Services.Mapper
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<userToLoginDTO, User>();
            CreateMap<userToRegisterDTO, User>();
            CreateMap<User, userToListRegisterDTO>();
            CreateMap<User, userToListLoginDTO>();

            CreateMap<ProductToCreateDTO, SalesStock>();
            //CreateMap<productToUpdateDTO, SalesStock>();
            CreateMap<SalesStock, ProductToListDTO>();


            CreateMap<PurchaseToCreateDTO, Purchase>();
            CreateMap<Purchase, PurchaseToListDTO>();

            CreateMap<PurchaseResume, PurchaseResumeListDTO>();
        }
    }
}