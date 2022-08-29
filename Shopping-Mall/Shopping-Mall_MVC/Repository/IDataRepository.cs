using Shopping_Mall_MVC.Models;

namespace Shopping_MAll_TestProject
{
    public interface IDataRepository<TEntity>
    {
        IEnumerable<TEntity> GetAll();

        void Add(Mall mall);
    }
}