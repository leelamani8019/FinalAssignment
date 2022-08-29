using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shopping_Library.Entity
{
    public class Malls
    {
        [Key]
        public int Id { get; set; }
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
