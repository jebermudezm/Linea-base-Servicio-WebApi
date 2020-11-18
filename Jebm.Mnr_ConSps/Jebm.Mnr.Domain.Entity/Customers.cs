namespace Jebm.Mnr.Domain.Entity
{
    public class Customers
    {
        public int CustomerId { get; set; }
        public string InternalId { get; set; }
        public string Nit { get; set; }
        public string Name { get; set; }
        public string Address { get; set; }
        public string PhoneNumber { get; set; }
        public int CityId { get; set; }
        public string CityName { get; set; }
        public string CIIU { get; set; }
    }
}
