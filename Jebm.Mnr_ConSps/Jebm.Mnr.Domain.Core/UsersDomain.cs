using Jebm.Mnr.Domain.Entity;
using Jebm.Mnr.Domain.Interface;
using Jebm.Mnr.Infrastructure.Interface;

namespace Jebm.Mnr.Domain.Core
{
    public class UsersDomain : IUsersDomain
    {
        private readonly IUsersRepository _usersRepository;
        public UsersDomain(IUsersRepository usersRepository)
        {
            _usersRepository = usersRepository;
        }
        public Users Authenticate(string userName, string password)
        {
            return _usersRepository.Authenticate(userName, password);
        }
    }
}
