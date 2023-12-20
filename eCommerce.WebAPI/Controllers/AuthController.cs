using AutoMapper;
using eCommerce.DTOs.User;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using eCommerce.Services.Interfaces;
using Microsoft.AspNetCore.Mvc;

namespace eCommerce.WebAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class AuthController : ControllerBase
    {

        private readonly IAuthService _authService;


        public AuthController(IAuthService authService)
        {
            _authService = authService;

        }

        [HttpPost("register")]
        public async Task<IActionResult> Register(userToRegisterDTO userToRegisterDTO){
            var user = await _authService.Register(userToRegisterDTO);
            if(user is null) return BadRequest("Ya existe un usuario registrado con ese correo");
            return Ok(user);
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(userToLoginDTO userToLoginDTO){

            var userToLogin = await _authService.Login(userToLoginDTO);

            if(userToLogin is null) return Unauthorized();

            return Ok(userToLogin);
        }
    }
}
