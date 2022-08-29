using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Shopping_Mall_MVC.Models
{
    public class Mall
    {
        [Key]
        public int Id { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "Name Should not be more than 50 character")]
        public string? Name { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "Name Should not be more than 50 character")]
        public string? City { get; set; }
        [Required]
        [MaxLength(50, ErrorMessage = "Name Should not be more than 50 character")]
        public string? State { get; set; }
        [Required]
        public int? Year { get; set; }
        [Display(Name = "image")]
        public string? Mallimg { get; set; }
    }
}
