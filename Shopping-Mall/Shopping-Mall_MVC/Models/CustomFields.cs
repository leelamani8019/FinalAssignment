using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations;

namespace Shopping_Mall_MVC.Models
{
    public class CustomFields:IdentityUser
    {
        [Required]
        [MaxLength(20)]
        public string Panno { get; set; }

    }
}
