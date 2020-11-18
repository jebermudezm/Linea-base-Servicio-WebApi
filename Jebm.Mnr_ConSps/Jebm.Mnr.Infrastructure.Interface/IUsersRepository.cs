using Jebm.Mnr.Domain.Entity;
using System;
using System.Collections.Generic;
using System.Text;

namespace Jebm.Mnr.Infrastructure.Interface
{
    public interface IUsersRepository
    {
        Users Authenticate(string username, string password);
    }
}
