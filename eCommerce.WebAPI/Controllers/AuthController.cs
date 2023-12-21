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
            try{
                var user = await _authService.Register(userToRegisterDTO);
                if(user is null) return BadRequest("Error en el ingreso de datos");
                return Ok(user);    
            }
            catch (System.Exception){
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login(userToLoginDTO userToLoginDTO){
            try{
                var userToLogin = await _authService.Login(userToLoginDTO);

                if(userToLogin is null) return Unauthorized();

                return Ok(userToLogin);
            }
            catch (System.Exception){
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }

        }
    }
}
