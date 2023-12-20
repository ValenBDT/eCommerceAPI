using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;
using eCommerce.Services.Interfaces;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using Microsoft.Extensions.Configuration;
using System.Text;
using System.IdentityModel.Tokens.Jwt;

namespace eCommerce.Services.Services
{
    public class TokenService : ITokenService
    {
        private readonly SymmetricSecurityKey _ssKey;

        public TokenService(IConfiguration configuration)
        {
            _ssKey = new SymmetricSecurityKey(Encoding.ASCII.GetBytes(configuration["tokenKey"]));
        }
        public string CreateToken(User user)
        {
            var claims = new List<Claim>();
            claims.Add(new Claim(JwtRegisteredClaimNames.NameId,user.Mail));
            claims.Add(new Claim("Id", user.UserId.ToString()));
            claims.Add(new Claim("Name", user.Name));
            claims.Add(new Claim("Rol", user.Rol.ToString()));



            var credentials = new SigningCredentials(_ssKey, SecurityAlgorithms.HmacSha512Signature);

            var tokenDescriptor = new SecurityTokenDescriptor{
                Issuer = "issuer",
                Audience = "issuer",
                Subject = new (claims),
                SigningCredentials = credentials,
                Expires = DateTime.UtcNow.AddHours(1),
            };

            var tokenHandler = new JwtSecurityTokenHandler();

            var token = tokenHandler.CreateToken(tokenDescriptor);
            return tokenHandler.WriteToken(token);
        }
    }
}