using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using AutoMapper;
using eCommerce.DTOs.User;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace eCommerce.WebAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : ControllerBase
    {
        private readonly IAuthRepository _authRepository;
        private readonly IMapper _mapper;

        public AuthController(IAuthRepository authRepository, IMapper mapper)
        {
            _mapper = mapper;
            _authRepository = authRepository;
        }

        [HttpPost("register")]
        public async Task<IActionResult> Register(userToRegisterDTO userToRegisterDTO){
            if(await _authRepository.GetUserByMail(userToRegisterDTO.Mail) != null) return BadRequest("Ya existe un usuario registrado con ese correo");

            var userToRegister = _mapper.Map<User>(userToRegisterDTO);
            var userRegistered = await _authRepository.Register(userToRegister);

            var userFinded = await _authRepository.GetUserByMail(userRegistered.Mail); 
            var userRegisteredToListDTO = _mapper.Map<userToListDTO>(userFinded);
            return Ok(userRegisteredToListDTO);
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(userToLoginDTO userToLoginDTO){

            var userLoged = await _authRepository.Login(userToLoginDTO.Mail, userToLoginDTO.Password);

            if(userLoged is null) return Unauthorized();

            return Ok(userLoged);
        }
    }
}
