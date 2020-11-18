using Jebm.Mnr.Application.DTO;
using Jebm.Mnr.Transversal.Common;

namespace Jebm.Mnr.Application.Interface
{
    public interface IUsersApplication
    {
        Response<UsersDto> Authenticate(string username, string password);
    }
}
