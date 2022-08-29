using Microsoft.EntityFrameworkCore;
using Shopping_Library.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shopping_Library
{
    public class MallContext : DbContext
    {
        public MallContext() { }
        public MallContext(DbContextOptions options) : base(options) { }
        public DbSet<Malls> Mall { set; get; }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=LAKSHMAN\MSSQLSERVER01;Database=Mall;Trusted_Connection=True;");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Malls>().HasIndex(u => u.Name).IsUnique();
        }
    }
}
