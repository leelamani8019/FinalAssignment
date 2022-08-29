using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Shopping_Mall_MVC.Models;

namespace Shopping_Mall_MVC.Data
{
    public class ApplicationDbContext : IdentityDbContext<CustomFields>
    {

        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
            : base(options)
        {

        }
        public DbSet<AdminRole> Register { get; set; }
        

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=LAKSHMAN\MSSQLSERVER01;Database=Mall;Trusted_Connection=True;");
        }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            modelBuilder.Entity<AdminRole>().HasIndex(u => u.Email).IsUnique();
            //modelBuilder.Entity<UserStatus>().HasIndex(u => u.Email).();
            modelBuilder.ApplyConfiguration(new AplicationUserEntityConfiguration());
        }
        public class AplicationUserEntityConfiguration : IEntityTypeConfiguration<CustomFields>
        {
            public void Configure(EntityTypeBuilder<CustomFields> builder)
            {
                builder.Property(p => p.Panno).HasMaxLength(10);
            }
            // public DbSet<Shopping_Mall_MVC.Models.Mall>? Mall { get; set; }
        }
    }
}