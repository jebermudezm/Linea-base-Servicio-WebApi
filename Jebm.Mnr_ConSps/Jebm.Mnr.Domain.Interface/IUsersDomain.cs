using Jebm.Mnr.Domain.Entity;

namespace Jebm.Mnr.Domain.Interface
{
    public interface IUsersDomain
    {
        Users Authenticate(string username, string password);
    }
}
