using System.Data;
using System.Security.Cryptography;
using System.Text;
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
            User? userFinded = null; 
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
                command.Parameters.Add("usuario", OracleDbType.RefCursor).Direction = ParameterDirection.Output;

                await _connection.OpenAsync();
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
                await _connection.CloseAsync();
            }
            if(userFinded is null) return null;
            return userFinded;
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
            User? userFinded = null;
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

        public async Task<User> GetUserById(int id)
        {
            User? userFinded = null;
            using (OracleCommand command = new OracleCommand("usuario_buscar_id", _connection))
            {
                await _connection.OpenAsync();
                command.Parameters.Add("p_idusuario", OracleDbType.Varchar2).Value = id;
                command.Parameters.Add("p_usuario", OracleDbType.RefCursor).Direction = ParameterDirection.Output;
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
    }
}