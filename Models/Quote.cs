using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace testAPI.Models
{
    public class Quote
    {
        [BsonId]
        [BsonRepresentation(BsonType.ObjectId)]
        public string Id { get; set; }

        public string tao {get; set; }
    }
}