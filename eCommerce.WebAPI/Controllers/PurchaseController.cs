using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.Purchase;
using eCommerce.DTOs.PurchaseResume;
using eCommerce.Services.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace eCommerce.WebAPI.Controllers
{
    [Authorize]
    [ApiController]
    [Route("")]
    public class PurchaseController : ControllerBase
    {
        private readonly IPurchaseService _purchaseService;

        public PurchaseController(IPurchaseService purchaseService)
        {
            _purchaseService = purchaseService;
        }

        [HttpPost("CreatePurchase")]
        public async Task<IActionResult> CreatePurchase(PurchaseToCreateDTO purchaseToCreateDTO){
            try
            {
                    var purchase = await _purchaseService.CreatePurchase(purchaseToCreateDTO);

                    if(purchase is null) return BadRequest();

                    return Ok(purchase);
            }
            catch (System.Exception ex)
            {

                return StatusCode(500, ex.Message);
            }

        }

        [HttpGet("GetPurchaseResume/{id}")]
        public async Task<IActionResult> GetPurchaseResume(int id){

            try
            {
                var purchaseResume = await _purchaseService.GetPurchaseResume(id);

                if(purchaseResume is null) return NotFound();

                return Ok(purchaseResume);               
            }
            catch (System.Exception)
            {
                
                return StatusCode(500, "Se produjo un error en la base de datos. Inténtelo de nuevo más tarde.");
            }
        }
    }
}