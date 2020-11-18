using System;
using System.Collections.Generic;
using System.Text;

namespace Jebm.Mnr.Domain.Entity
{
    public class Users
    {
        public int UserId { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public DateTime DateFrom { get; set; }
        public DateTime? DateTo { get; set; }
        public string Token { get; set; }
    }
}
