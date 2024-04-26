using WebApplication1.Model;

namespace WebApplication1.Repositories;

public class IWarehouseRepository
{
    Product getProduct(ProductRequest productRequest);
}