using Dapper;
using Jebm.Mnr.Domain.Entity;
using Jebm.Mnr.Infrastructure.Interface;
using Jebm.Mnr.Transversal.Common;
using System.Data;

namespace Jebm.Mnr.Infrastructure.Repository
{
    public class UsersRepository : IUsersRepository
    {
        private const string USERSGETBYUSERANDPASSWORD = "MNR.UsersGetByUserAndPassword";
        private readonly IConnectionFactory _connectionFactory;
        public UsersRepository(IConnectionFactory connectionFactory)
        {
            _connectionFactory = connectionFactory;
        }
        public Users Authenticate(string userName, string password)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = USERSGETBYUSERANDPASSWORD;
                var parameters = new DynamicParameters();
                parameters.Add("UserName", userName);
                parameters.Add("Password", password);

                var user = connection.QuerySingle<Users>(query, param: parameters, commandType: CommandType.StoredProcedure);
                return user;
            }
        }
    }
}
