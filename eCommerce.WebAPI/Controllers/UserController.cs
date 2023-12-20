using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Services.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace eCommerce.WebAPI.Controllers
{   
    [Authorize(Policy = "Comprador")]
    [ApiController]
    [Route("api/[controller]")]
    public class UserController : ControllerBase
    {   
        private readonly IUserService _userService;
        public UserController(IUserService userService)
        {
            _userService = userService;
        }
        [HttpGet]
        public async Task<IActionResult> GetAllAync(){
            return Ok(await _userService.GetAllAsync());
        }

    }
}