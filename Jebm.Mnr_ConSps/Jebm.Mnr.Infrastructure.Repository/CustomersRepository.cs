using System;
using Jebm.Mnr.Domain.Entity;
using Jebm.Mnr.Infrastructure.Interface;
using Jebm.Mnr.Transversal.Common;
using Dapper;
using System.Data;
using System.Threading.Tasks;
using System.Collections.Generic;

namespace Jebm.Mnr.Infrastructure.Repository
{
    public class CustomersRepository : ICustomersRepository
    {
        private const string CUSTOMERSINSERT = "MNR.CustomersInsert";
        private const string CUSTOMERSUPDATE = "MNR.CustomersUpdate";
        private const string CUSTOMERSDELETE = "MNR.CustomersDelete";
        private const string CUSTOMERSGETBYID = "MNR.CustomersGetByID";
        private const string CUSTOMERSLIST = "MNR.CustomersList";

        private readonly IConnectionFactory _connectionFactory;
        public CustomersRepository(IConnectionFactory connectionFactory)
        {
            _connectionFactory = connectionFactory;
        }

        #region Métodos Síncronos        

        public bool Insert(Customers customers)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSINSERT;
                var parameters = new DynamicParameters();
                parameters.Add("InternalId", customers.InternalId);
                parameters.Add("Nit", customers.Nit);
                parameters.Add("Name", customers.Name);
                parameters.Add("Address", customers.Address);
                parameters.Add("PhoneNumber", customers.PhoneNumber);
                parameters.Add("CityId", customers.CityId);
                parameters.Add("CIIU", customers.CIIU);

                var result = connection.Execute(query, param: parameters, commandType: CommandType.StoredProcedure);
                return result > 0;
            }
        }

        public bool Update(Customers customers)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSUPDATE;
                var parameters = new DynamicParameters();
                parameters.Add("CustomerId", customers.CustomerId);
                parameters.Add("InternalId", customers.InternalId);
                parameters.Add("Nit", customers.Nit);
                parameters.Add("Name", customers.Name);
                parameters.Add("Address", customers.Address);
                parameters.Add("PhoneNumber", customers.PhoneNumber);
                parameters.Add("CityId", customers.CityId);
                parameters.Add("CIIU", customers.CIIU);

                var result = connection.Execute(query, param: parameters, commandType: CommandType.StoredProcedure);
                return result > 0;
            }
        }

        public bool Delete(string customerId)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSDELETE;
                var parameters = new DynamicParameters();
                parameters.Add("CustomerID", customerId);
                var result = connection.Execute(query, param: parameters, commandType: CommandType.StoredProcedure);
                return result > 0;
            }
        }

        public Customers Get(string customerId)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSGETBYID;
                var parameters = new DynamicParameters();
                parameters.Add("CustomerID", customerId);

                var customer = connection.QuerySingle<Customers>(query, param: parameters, commandType: CommandType.StoredProcedure);
                return customer;
            }
        }

        public IEnumerable<Customers> GetAll()
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSLIST;

                var customers = connection.Query<Customers>(query, commandType: CommandType.StoredProcedure);
                return customers;
            }
        }

        #endregion

        #region Métodos Asíncronos

        public async Task<bool> InsertAsync(Customers customers)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSINSERT;
                var parameters = new DynamicParameters();
                parameters.Add("InternalId", customers.InternalId);
                parameters.Add("Nit", customers.Nit);
                parameters.Add("Name", customers.Name);
                parameters.Add("Address", customers.Address);
                parameters.Add("PhoneNumber", customers.PhoneNumber);
                parameters.Add("CityId", customers.CityId);
                parameters.Add("CIIU", customers.CIIU);

                var result = await connection.ExecuteAsync(query, param: parameters, commandType: CommandType.StoredProcedure);
                return result > 0;
            }
        }

        public async Task<bool> UpdateAsync(Customers customers)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSUPDATE;
                var parameters = new DynamicParameters();
                parameters.Add("CustomerId", customers.CustomerId);
                parameters.Add("InternalId", customers.InternalId);
                parameters.Add("Nit", customers.Nit);
                parameters.Add("Name", customers.Name);
                parameters.Add("Address", customers.Address);
                parameters.Add("PhoneNumber", customers.PhoneNumber);
                parameters.Add("CityId", customers.CityId);
                parameters.Add("CIIU", customers.CIIU);

                var result = await connection.ExecuteAsync(query, param: parameters, commandType: CommandType.StoredProcedure);
                return result > 0;
            }
        }

        public async Task<bool> DeleteAsync(string customerId)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSDELETE;
                var parameters = new DynamicParameters();
                parameters.Add("CustomerID", customerId);
                var result = await connection.ExecuteAsync(query, param: parameters, commandType: CommandType.StoredProcedure);
                return result > 0;
            }
        }

        public async Task<Customers> GetAsync(string customerId)
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSGETBYID;
                var parameters = new DynamicParameters();
                parameters.Add("CustomerID", customerId);

                var customer = await connection.QuerySingleAsync<Customers>(query, param: parameters, commandType: CommandType.StoredProcedure);
                return customer;
            }
        }

        public async Task<IEnumerable<Customers>> GetAllAsync()
        {
            using (var connection = _connectionFactory.GetConnection)
            {
                var query = CUSTOMERSLIST;

                var customers = await connection.QueryAsync<Customers>(query, commandType: CommandType.StoredProcedure);
                return customers;
            }
        }

        #endregion
    }
}
