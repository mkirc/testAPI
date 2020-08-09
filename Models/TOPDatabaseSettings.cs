namespace testAPI.Models
{
    public class TOPDatabaseSettings : ITOPDatabaseSettings
    {
        public string QuotesCollectionName { get; set; }
        public string ConnectionString { get; set; }
        public string DatabaseName { get; set; }
    }

    public interface ITOPDatabaseSettings
    {
        string QuotesCollectionName { get; set; }
        string ConnectionString { get; set; }
        string DatabaseName { get; set; }
    }
}
