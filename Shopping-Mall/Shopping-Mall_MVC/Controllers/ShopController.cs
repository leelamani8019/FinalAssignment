using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using Shopping_Mall_MVC.Models;
using Shopping_MAll_TestProject;
using System.Net.Mail;

namespace Shopping_Mall_MVC.Controllers
{
    [Authorize]
    public class ShopController : Controller
    {
        
        Uri baseuri = new Uri("https://localhost:7037/api");
        HttpClient client = new HttpClient();
        List<Mall> malls = new List<Mall>();
              
         //private readonly IMapper _mapper;
        
        public ShopController( )
        {
            client.BaseAddress = baseuri;
            //_mapper = mapper;
            
        }

        public IActionResult Index()
        {
            client.BaseAddress = baseuri;
            HttpResponseMessage response = client.GetAsync(baseuri + "/Mall").Result;
            string data = response.Content.ReadAsStringAsync().Result;
            malls = JsonConvert.DeserializeObject<List<Mall>>(data);
            var result = malls.OrderByDescending(e => e.Year).ThenBy(e => e.Name);
            return View(result);
        }
        [Authorize(policy: "writepolicy")]
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Add(Mall mall)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:7037/api/Mall");
                var postTask = client.PostAsJsonAsync<Mall>("Mall", mall);
                postTask.Wait();
                var result = postTask.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }
            }
            ModelState.AddModelError(string.Empty, "server error");
            return View();
        }
        [Authorize(policy: "writepolicy")]
        public IActionResult Edit(int id)
        {
            client.BaseAddress = baseuri;
            HttpResponseMessage response = client.GetAsync(baseuri + "/Mall").Result;
            string data = response.Content.ReadAsStringAsync().Result;
            malls = JsonConvert.DeserializeObject<List<Mall>>(data);
            var mal = malls.Where(e => e.Id == id).FirstOrDefault();
            return View(mal);
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Save(Mall mall)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:7037/api/");
                var put = client.PutAsJsonAsync($"Mall?id={mall.Id}", mall);
                put.Wait();
                var result = put.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }

            }
            ModelState.AddModelError(string.Empty, "server error");
            return View();

        }
        [Authorize(policy: "writepolicy")]
        public ActionResult Delete(int id)
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("https://localhost:7037/api/");
                var put = client.DeleteAsync($"Mall/{id}");
                put.Wait();
                var result = put.Result;
                if (result.IsSuccessStatusCode)
                {
                    return RedirectToAction("Index");
                }

            }
            ModelState.AddModelError(string.Empty, "server error");
            return View();
        }
    }
}
