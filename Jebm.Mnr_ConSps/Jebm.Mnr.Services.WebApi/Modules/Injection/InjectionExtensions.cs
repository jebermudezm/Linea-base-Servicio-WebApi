using Microsoft.Extensions.DependencyInjection;
using Jebm.Mnr.Transversal.Common;
using Jebm.Mnr.Infrastructure.Data;
using Jebm.Mnr.Infrastructure.Repository;
using Jebm.Mnr.Application.Interface;
using Jebm.Mnr.Application.Main;
using Jebm.Mnr.Domain.Interface;
using Jebm.Mnr.Domain.Core;
using Jebm.Mnr.Infrastructure.Interface;
using Jebm.Mnr.Transversal.Logging;
using Microsoft.Extensions.Configuration;

namespace Jebm.Mnr.Services.WebApi.Modules.Injection
{
    public static class InjectionExtensions
    {
        public static IServiceCollection AddInjection(this IServiceCollection services, IConfiguration configuration)
        {
            services.AddSingleton<IConfiguration>(configuration);
            services.AddSingleton<IConnectionFactory, ConnectionFactory>();
            services.AddScoped<ICustomersApplication, CustomersApplication>();
            services.AddScoped<ICustomersDomain, CustomersDomain>();
            services.AddScoped<ICustomersRepository, CustomersRepository>();
            services.AddScoped<IUsersApplication, UsersApplication>();
            services.AddScoped<IUsersDomain, UsersDomain>();
            services.AddScoped<IUsersRepository, UsersRepository>();
            services.AddScoped(typeof(IAppLogger<>), typeof(LoggerAdapter<>));

            return services;
        }
    }
}
