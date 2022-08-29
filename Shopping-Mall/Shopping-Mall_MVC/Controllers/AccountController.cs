
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Shopping_Mall_MVC.Data;
using Shopping_Mall_MVC.Models;
using static Microsoft.AspNetCore.Identity.UI.V4.Pages.Account.Internal.ExternalLoginModel;

namespace Shopping_Mall_MVC.Controllers
{
    [Authorize(policy: "writepolicy")]
    public class AccountController : Controller
    {
        private readonly ApplicationDbContext _adminContext;
        private readonly UserManager<CustomFields> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        
        private List<AdminRole> adminrole=new List<AdminRole>();

        public AccountController(ApplicationDbContext adminContext, UserManager<CustomFields> userManager, RoleManager<IdentityRole> roleManager)
        {
            _adminContext = adminContext;
            _userManager = userManager;
            _roleManager = roleManager;
            //_roleManager = roleManager;

        }
        public IActionResult RegisterdPage()
        {
            return View();
        }
        public IActionResult Index()
        {
            if (_adminContext.Register == null)
            {
                return NotFound();
            }
            List<AdminRole> admins = new List<AdminRole>();
            admins = _adminContext.Register.ToList();
            if (admins == null)
            {
                return NotFound();
            }
            return View(admins);
        }
        [HttpPost]
        public async Task<IActionResult> Simple(int id)
        {
            var data = _adminContext.Register.Find(id);
            if (data == null)
            {
                return NoContent();
            }

            var user = new CustomFields()
            {
                Email = data.Email,
                Panno = data.Panno,
                UserName=data.Email
            };
            var roles = _roleManager.FindByNameAsync(data.Rolename).Result;
            await _userManager.CreateAsync(user, data.Password);
            await _userManager.AddToRoleAsync(user, roles.Name);
            _adminContext.Register.Remove(data);
            _adminContext.SaveChanges();
            return Json("Success");
           
        }
        [HttpPost]
        public IActionResult rejected(int id)
        {
            var details = _adminContext.Register.Find(id);
            if (details == null)
            {
                return NotFound();
            }
            _adminContext.Register.Remove(details);
            _adminContext.SaveChanges();
            return Json("Rejected");

        }
    }
}
