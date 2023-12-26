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
            var purchase = await _purchaseService.CreatePurchase(purchaseToCreateDTO);

            if(purchase is null) return BadRequest();

            return Ok(purchase);
        }

        [HttpGet("GetPurchaseResume/{id}")]
        public async Task<IActionResult> GetPurchaseResume(int purchaseId){
            var purchaseResume = await _purchaseService.GetPurchaseResume(purchaseId);

            if(purchaseResume is null) return NotFound();

            return Ok(purchaseResume);
        }
    }
}