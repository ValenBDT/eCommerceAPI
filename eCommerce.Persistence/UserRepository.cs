using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using Oracle.ManagedDataAccess.Client;

namespace eCommerce.Persistence
{
    public class UserRepository : IUserRepository
    {

        private readonly OracleConnection _connection;

        public UserRepository(OracleConnection connection)
        {
            _connection = connection;
        }

        public async Task<IEnumerable<User>> GetAllAsync()
{
    List<User> users = new List<User>();
    using (var connection = _connection)
    {
        using (var command = connection.CreateCommand())
        {
            command.CommandType = CommandType.StoredProcedure;
            command.CommandText = "usuario_listar";
            OracleParameter refCursorParam = new OracleParameter("usuario", OracleDbType.RefCursor);
            refCursorParam.Direction = System.Data.ParameterDirection.Output;
            command.Parameters.Add(refCursorParam);
            await connection.OpenAsync();

            using (OracleDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    User newUser = new User
                    {
                        UserId = reader.GetInt32("idUsuario"),
                        Mail = reader.GetString("mail"),
                        Name = reader.GetString("nombre"),
                        Rol = reader.GetString("rol"),
                        Password = reader.GetString("contraseña")
                    };
                    users.Add(newUser);
                }
            }

            await connection.CloseAsync();
        }
    }
    return users;
}
    }
}
