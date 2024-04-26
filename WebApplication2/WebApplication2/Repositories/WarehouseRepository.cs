using System.Data.SqlClient;
using WebApplication1.Model;

namespace WebApplication1.Repositories;

public class WarehouseRepository
{
    private IConfiguration _configuration;

    public WarehouseRepository(IConfiguration configuration)
    {
        _configuration = configuration;
    }

    public Product getProduct(ProductRequest productRequest)
    {
        using var con = new SqlConnection(_configuration["ConnectionStrings:DefaultConnection"]);
        con.Open();

        using var cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = ""
    }
}