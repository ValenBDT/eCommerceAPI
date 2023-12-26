using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.User;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using eCommerce.Services.Interfaces;
using Microsoft.AspNetCore.Http.HttpResults;

namespace eCommerce.Services.Services
{
    public class AuthService : IAuthService
    {
        private readonly IAuthRepository _authRepository;
        private readonly ITokenService _tokenService;
        private readonly IMapper _mapper;
        public AuthService(IAuthRepository authRepository, IMapper mapper, ITokenService tokenService)
        {   
            _tokenService = tokenService;
            _mapper = mapper;
            _authRepository = authRepository;
        }

        public async Task<userToListLoginDTO> Login(userToLoginDTO userToLoginDTO)
        {
            var userToLogin = await _authRepository.Login(userToLoginDTO.Mail, userToLoginDTO.Password);
            if(userToLogin is null) return null;
            var token = _tokenService.CreateToken(userToLogin);
            var userLoged = _mapper.Map<userToListLoginDTO>(userToLogin);
            userLoged.Token = token;
            return userLoged;
        }

        public async Task<userToListRegisterDTO> Register(userToRegisterDTO userToRegisterDTO)
        {
            if(userToRegisterDTO.Rol != "Comprador" && userToRegisterDTO.Rol != "Vendedor") return null;
            if(await _authRepository.GetUserByMail(userToRegisterDTO.Mail) != null) return null;

            var userToRegister = _mapper.Map<User>(userToRegisterDTO);
            var userRegistered = await _authRepository.Register(userToRegister);
            var userRegisteredToListDTO = _mapper.Map<userToListRegisterDTO>(userRegistered);
            return userRegisteredToListDTO;
        }
    }
}