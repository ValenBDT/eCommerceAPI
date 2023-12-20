using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using eCommerce.Entities;
using eCommerce.Persistence.Interfaces;
using Oracle.ManagedDataAccess.Client;

namespace eCommerce.Persistence
{
    public class AuthRepository : IAuthRepository
    {
        private readonly OracleConnection _connection;

        public AuthRepository(OracleConnection connection)
        {
            _connection = connection;
        }
        public async Task<User> Register(User user)
        {
            var passwordHash = EncryptPassword(user.Password);
            user.Password = passwordHash;
            using (OracleCommand command = new OracleCommand("usuario_insertar", _connection))
            {
                command.CommandType = CommandType.StoredProcedure;

                // Asegúrate de ajustar los valores según tus necesidades
                command.Parameters.Add("p_mail", OracleDbType.Varchar2).Value = user.Mail.ToLower();
                command.Parameters.Add("p_name", OracleDbType.Varchar2).Value = user.Name;
                command.Parameters.Add("p_rol", OracleDbType.Varchar2).Value = user.Rol;
                command.Parameters.Add("p_password", OracleDbType.Varchar2).Value = user.Password;

                await _connection.OpenAsync();
                command.ExecuteNonQuery();
                await _connection.CloseAsync();
            }
            return user;
        }     
        public async Task<User> Login(string email, string password)
        {
            var userFinded = await GetUserByMail(email);
            if(userFinded is null) return null;
            if(EncryptPassword(password) != userFinded.Password) return null;
            return userFinded;
        }


        public async Task<User> GetUserByMail(string mail)
        {
            User userFinded = null;
            using (OracleCommand command = new OracleCommand("usuario_buscar", _connection))
            {
                await _connection.OpenAsync();
                command.Parameters.Add("p_mail", OracleDbType.Varchar2).Value = mail.ToLower();  
                command.Parameters.Add("usuario", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
                command.CommandType = CommandType.StoredProcedure;

                using (OracleDataReader reader = command.ExecuteReader())
                {
                    if(reader.HasRows){
                        reader.Read();
                        userFinded = new User{
                            UserId = reader.GetInt32("idUsuario"),
                            Mail = reader.GetString("mail"),
                            Name = reader.GetString("nombre"),
                            Rol = reader.GetString("rol"),
                            Password = reader.GetString("contraseña")  
                        };
                    }
                }

            }
                await _connection.CloseAsync();
                return userFinded;
        }

        private string EncryptPassword(string password){
            using (var sha256 = SHA256.Create())
            {
                var passwordHash = sha256.ComputeHash(Encoding.UTF8.GetBytes(password));

                return Convert.ToBase64String(passwordHash);
            }
        }
    }
}