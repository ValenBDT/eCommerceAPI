using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.DTOs.PurchaseResume;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using Oracle.ManagedDataAccess.Client;

namespace eCommerce.Persistence.Repositories
{
    public class PurchaseRepository : IPurchaseRepository
    {
        private readonly OracleConnection _connection;

        public PurchaseRepository(OracleConnection connection)
        {
            _connection = connection;
        }
        public async Task<Purchase> CreatePurchase(Purchase purchase)
        {
            Purchase? purchaseFinded = null;
            using (OracleCommand command = new OracleCommand("compra_insertar", _connection)){
                command.CommandType = CommandType.StoredProcedure;
                
                command.Parameters.Add("p_idcomprador", OracleDbType.Int32).Value = purchase.userId;
                command.Parameters.Add("p_codigoproducto", OracleDbType.Varchar2).Value = purchase.productCode;
                command.Parameters.Add("p_fechacompra", OracleDbType.Date).Value = DateTime.Now;
                command.Parameters.Add("p_compra", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                await _connection.OpenAsync();
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    if(reader.HasRows){
                        reader.Read();
                        purchaseFinded = new Purchase{
                            userId = reader.GetInt32("idUsuario"),
                            productCode= reader.GetString("codigoproducto"),
                            purchaseDate = reader.GetDateTime("fechacompra"),

                        };
                    }
                }
                await _connection.CloseAsync();

                return purchaseFinded;

            }
        }

        public async Task<PurchaseResume> GetPurchaseResume(int purchaseId)
        {
            PurchaseResume? purchaseResumeFinded = null;
            using (OracleCommand command = new OracleCommand("compra_resumen", _connection)){
                command.CommandType = CommandType.StoredProcedure;
                
                command.Parameters.Add("p_idcompra", OracleDbType.Int32).Value = purchaseId;
                command.Parameters.Add("p_compraresumen", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                await _connection.OpenAsync();
                using (OracleDataReader reader = command.ExecuteReader())
                {
                    if(reader.HasRows){ 
                        reader.Read();
                        purchaseResumeFinded = new PurchaseResume{
                            PurchaseId = reader.GetInt32("idCompra"),
                            BuyerId = reader.GetInt32("idComprador"),
                            SellerId = reader.GetInt32("idVendedor"),
                            BuyerName= reader.GetString("nombreComprador"),
                            ProductCode = reader.GetString("codigoProducto"),
                            ProductName = reader.GetString("nombreProducto"),
                            Price = reader.GetDouble("precioProducto"),
                            PurchaseDate = reader.GetDateTime("fechacompra"),

                        };
                    }
                }
                await _connection.CloseAsync();

                return purchaseResumeFinded;

            }
        }
    }
}