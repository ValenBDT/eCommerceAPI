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
    [Route("")]
    public class ProductController : ControllerBase
    {
        private readonly IProductService _productService;

        public ProductController(IProductService productService)
        {
            _productService = productService;
        }
        [Authorize(Policy = "Vendedor")]
        [HttpPost("CreateProduct")]
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
        [HttpDelete("DeleteProduct/{code}")]
        public async Task<IActionResult> DeleteProduct(string code){
            try{
                if(!await _productService.DeleteProductAsync(code)) return BadRequest();

                return Ok("Registro borrado exitosamente");
            }
            catch (System.Exception){
                
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }

        [HttpGet("GetProduct/{code}")]
        public async Task<IActionResult> GetProduct(string code){
            try{
                var product = await _productService.GetProductAsync(code);
                if(product is null) return NotFound("No existe tal producto o no tiene stock");
                return Ok(product);
            }
            catch (System.Exception){
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }
        [Authorize(Policy = "Vendedor")]
        [HttpPut("UpdateProduct")]
        public async Task<IActionResult> UpdateProduct(ProductToUpdateDTO productToUpdateDTO){

            try{
            var idvendedorClaim = User.FindFirst("Id");
            if(idvendedorClaim is null) return Unauthorized();

            var idVendedor = int.Parse(idvendedorClaim.Value);

            var productUpdated = await _productService.UpdateProductAsync(productToUpdateDTO, idVendedor);
            if(productUpdated is null) return BadRequest();
            return Ok(productUpdated);
            }
            catch (System.Exception){
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }
        [Authorize(Policy = "Comprador")]
        [HttpGet("GetAllProducts")]
        public async Task<IActionResult> GetAllProducts(){
            try
            {
                return Ok(await _productService.GetAllProductsAsync());
            }
            catch (System.Exception)
            {
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }

        [HttpGet("GetAllProductsBySeller/{id}")]
        public async Task<IActionResult> GetAllProductsBySeller(int id){
            try
            {                
                var products = await _productService.GetAllProductsBySellerAsync(id);
                if(products is null) return BadRequest();
                return Ok(products);
            }
            catch (System.Exception)
            {
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }
    }
}