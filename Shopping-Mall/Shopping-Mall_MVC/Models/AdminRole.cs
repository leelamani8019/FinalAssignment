using System.ComponentModel.DataAnnotations;

namespace Shopping_Mall_MVC.Models
{
    public class AdminRole
    {
        internal bool IsApproved;

        [Key]
        public int Id { get; set; }
        [Required]
        [MaxLength(50)]
        public string? Email{ get; set; }
        [Required]
        [MaxLength(50)]
        public string? Panno { get; set; }
        [Required]
        [MaxLength(50)]
        public string? Password { get; set; }
        [Required]
        [MaxLength(50)]
        public string? ConfirmPassword { get; set; }
        public string? Rolename { get; set; }
        
        
        //public IEnumerable<object> Register { get; internal set; }
    }
}
