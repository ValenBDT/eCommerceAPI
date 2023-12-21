using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.Product;
using eCommerce.Services.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace eCommerce.WebAPI.Controllers
{   
    [ApiController]
    [Route("api/[controller]")]
    public class ProductController : ControllerBase
    {
        private readonly IProductService _productService;

        public ProductController(IProductService productService)
        {
            _productService = productService;
        }
        [Authorize(Policy = "Vendedor")]
        [HttpPost]
        public async Task<IActionResult> CreateProduct(ProductToCreateDTO productToCreateDTO){
            try{
                var idvendedorClaim = User.FindFirst("Id");
                if(idvendedorClaim is null) return Unauthorized();

                var idVendedor = int.Parse(idvendedorClaim.Value);
                var productCreated = await _productService.CreateProductAsync(productToCreateDTO, idVendedor);
                if(productCreated is null) return  NotFound();

                return Ok(productCreated);

            }
            catch (System.Exception){
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }
        [Authorize(Policy = "Vendedor")]
        [HttpDelete]
        public async Task<IActionResult> DeleteProduct(string code){
            try{
                if(!await _productService.DeleteProductAsync(code)) return BadRequest();

                return Ok("Registro borrado exitosamente");
            }
            catch (System.Exception){
                
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }
    }
}