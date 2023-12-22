using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using Oracle.ManagedDataAccess.Client;

namespace eCommerce.Persistence.Repositories
{
    public class ProductRepository : IProductRepository
    {
        private readonly OracleConnection _connection;
        public ProductRepository(OracleConnection connection)
        {
            _connection = connection;
        }
        public async Task<SalesStock> CreateProductAsync(SalesStock productoStock)
        {
            SalesStock? productStockFinded = null;
            using (OracleCommand command = new OracleCommand("stockVentas_insertar", _connection)){
                command.CommandType = CommandType.StoredProcedure;
                
                command.Parameters.Add("p_idvendedor", OracleDbType.Int32).Value = productoStock.Idvendedor;
                command.Parameters.Add("p_nombre", OracleDbType.Varchar2).Value = productoStock.Name;
                command.Parameters.Add("p_codigo", OracleDbType.Varchar2).Value = productoStock.Code;
                command.Parameters.Add("p_precio", OracleDbType.Int32).Value = productoStock.Price;
                command.Parameters.Add("p_cantidad", OracleDbType.Int32).Value = productoStock.Quantity;
                command.Parameters.Add("stockVenta", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                await _connection.OpenAsync();
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    if(reader.HasRows){
                        reader.Read();
                        productStockFinded = new SalesStock{
                            Idvendedor = reader.GetInt32("idUsuario"),
                            Code = reader.GetString("codigoproducto"),
                            Name = reader.GetString("nombreproducto"),
                            Quantity = reader.GetInt32("cantidadproducto"),
                            Price = reader.GetDouble("precioproducto")
                        };
                    }
                }
                await _connection.CloseAsync();

                return productStockFinded;

            }
        }

        public async Task DeleteProductAsync(string id){
            using (OracleCommand command = new OracleCommand("stockVentas_eliminar", _connection)){
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("codigo", OracleDbType.Varchar2).Value = id;
                await _connection.OpenAsync();
                command.ExecuteNonQuery();
                await _connection.CloseAsync();
            }
        }

        public async Task<bool> ExistProductAsync(string code)
        {
            bool productStockFinded = false;
            using (OracleCommand command = new OracleCommand("stockVentas_buscar", _connection)){
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("codigo", OracleDbType.Varchar2).Value = code;
                command.Parameters.Add("stockVenta", OracleDbType.RefCursor).Direction = ParameterDirection.Output;


                await _connection.OpenAsync();
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    if(reader.HasRows){
                        productStockFinded = true;
                    }
                }
                await _connection.CloseAsync();

                return productStockFinded;
            }
        }

        public async Task<IEnumerable<SalesStock>> GetAllProductsAsync()
        {
            List<SalesStock> Sales = new List<SalesStock>();
            using (var connection = _connection)
            {
                using (var command = connection.CreateCommand())
                {
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "stockventas_listar";
                OracleParameter refCursorParam = new OracleParameter("stockVentas", OracleDbType.RefCursor);
                refCursorParam.Direction = System.Data.ParameterDirection.Output;
                command.Parameters.Add(refCursorParam);
                await connection.OpenAsync();

                using (OracleDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        SalesStock newSale = new SalesStock
                        {
                            Idvendedor = reader.GetInt32("idUsuario"),
                            Code = reader.GetString("codigoproducto"),
                            Name = reader.GetString("nombreproducto"),
                            Quantity = reader.GetInt32("cantidadproducto"),
                            Price = reader.GetInt32("precioproducto")
                    };
                    Sales.Add(newSale);
                    }
                }

                await connection.CloseAsync();
                }
            }
                return Sales;

        }

        public async Task<IEnumerable<SalesStock>> GetAllProductsBySellerAsync(int id)
        {
            List<SalesStock> Sales = new List<SalesStock>();
            using (var connection = _connection)
            {
                using (var command = connection.CreateCommand())
                {
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "stockventas_listar_vendedor";
                command.Parameters.Add("idvendedor", OracleDbType.Int32).Value = id;
                OracleParameter refCursorParam = new OracleParameter("stockVentas", OracleDbType.RefCursor);
                refCursorParam.Direction = System.Data.ParameterDirection.Output;
                command.Parameters.Add(refCursorParam);
                await connection.OpenAsync();

                using (OracleDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        SalesStock newSale = new SalesStock
                        {
                            Idvendedor = reader.GetInt32("idUsuario"),
                            Code = reader.GetString("codigoproducto"),
                            Name = reader.GetString("nombreproducto"),
                            Quantity = reader.GetInt32("cantidadproducto"),
                            Price = reader.GetInt32("precioproducto")
                    };
                    Sales.Add(newSale);
                    }
                }

                await connection.CloseAsync();
                }
            }
                return Sales;
        }

        public async Task<SalesStock> GetProductByCodeAsync(string code)
        {
            SalesStock? productStockFinded = null;
            using (OracleCommand command = new OracleCommand("stockVentas_buscar", _connection)){
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("codigo", OracleDbType.Varchar2).Value = code;
                command.Parameters.Add("stockVenta", OracleDbType.RefCursor).Direction = ParameterDirection.Output;


                await _connection.OpenAsync();
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    if(reader.HasRows){
                        reader.Read();
                        productStockFinded = new SalesStock{
                            Idvendedor = reader.GetInt32("idUsuario"),
                            Code = reader.GetString("codigoproducto"),
                            Name = reader.GetString("nombreproducto"),
                            Quantity = reader.GetInt32("cantidadproducto"),
                            Price = reader.GetDouble("precioproducto")
                        };
                    }
                }
                await _connection.CloseAsync();

                return productStockFinded;
            }
        }

        public async Task<SalesStock> UpdateProductAsync(SalesStock productoStock)
        {
            SalesStock? productStockFinded = null;
            using (OracleCommand command = new OracleCommand("stockVentas_actualizar", _connection)){
                command.CommandType = CommandType.StoredProcedure;

                command.Parameters.Add("codigo", OracleDbType.Varchar2).Value = productoStock.Code;
                command.Parameters.Add("nombre", OracleDbType.Varchar2).Value = productoStock.Name;
                command.Parameters.Add("cantidad", OracleDbType.Varchar2).Value = productoStock.Quantity;
                command.Parameters.Add("precio", OracleDbType.Varchar2).Value = productoStock.Price;
                command.Parameters.Add("stockVenta", OracleDbType.RefCursor).Direction = ParameterDirection.Output;


                await _connection.OpenAsync();
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    if(reader.HasRows){
                        reader.Read();
                        productStockFinded = new SalesStock{
                            Idvendedor = reader.GetInt32("idUsuario"),
                            Code = reader.GetString("codigoproducto"),
                            Name = reader.GetString("nombreproducto"),
                            Quantity = reader.GetInt32("cantidadproducto"),
                            Price = reader.GetDouble("precioproducto")
                        };
                    }
                }
                await _connection.CloseAsync();

                return productStockFinded;
            }
        }
    }
}