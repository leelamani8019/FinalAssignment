using Shopping_Library.Entity;

namespace Shopping_MAll_TestProject
{
    public interface IDataRepository<TEntity>
    {
        IEnumerable<TEntity> List();

        void Add(Malls mall);
    }
}