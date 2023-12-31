using System.Data;
using System.Text;
using eCommerce.Entities;
using eCommerce.Persistence;
using eCommerce.Persistence.Interfaces;
using eCommerce.Persistence.Repositories;
using eCommerce.Services;
using eCommerce.Services.Interfaces;
using eCommerce.Services.Services;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using Oracle.ManagedDataAccess.Client;

var builder = WebApplication.CreateBuilder(args);
builder.Services.AddControllers();
builder.Services.AddAutoMapper(AppDomain.CurrentDomain.GetAssemblies());
builder.Services.AddTransient<OracleConnection>(_ => new Oracle.ManagedDataAccess.Client.OracleConnection(builder.Configuration.GetConnectionString("DefaultConnection")));

// builder.Services.AddScoped<IPurchaseRepository, PurchaseRepository>();
// builder.Services.AddScoped<IAuthRepository, AuthRepository>();
// builder.Services.AddScoped<IProductRepository, ProductRepository>();

builder.Services.AddScoped<IPurchaseService, PurchaseService>();
builder.Services.AddScoped<IAuthService, AuthService>();
builder.Services.AddScoped<ITokenService, TokenService>();
builder.Services.AddScoped<IProductService, ProductService>();

builder.Services.AddRepositories();
// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();



builder.Services.AddAuthorization(options =>
{
    options.AddPolicy("Comprador",
        policy => policy.RequireClaim("Rol", "Comprador"));
    
    options.AddPolicy("Vendedor",
        policy => policy.RequireClaim("Rol", "Vendedor"));
});

builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
    .AddJwtBearer(JwtBearerDefaults.AuthenticationScheme, 
                  options =>
                  {
                    options.TokenValidationParameters = new(){
                        IssuerSigningKey = new SymmetricSecurityKey(
                            Encoding.ASCII.GetBytes(builder.Configuration["tokenKey"])
                        ),
                        ValidateIssuer = false,
                        ValidateAudience = false,
                    };
                  });

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.UseHttpsRedirection();
app.MapControllers();

app.UseAuthentication();
app.UseAuthorization();
app.Run();
