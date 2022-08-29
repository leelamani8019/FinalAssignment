using AutoMapper;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Shopping_Library;
using Shopping_Library.Entity;
using Shopping_MAll_TestProject;
using Shopping_Mall_WebApi.api;

namespace Shopping_Mall_WebApi.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class MallController : ControllerBase
    {
        private readonly MallContext _context;
        private readonly IMapper _mapper;
        private IDataRepository<Malls> @object;

        public MallController(MallContext context, IMapper mapper)
        {
            _context = context;
            _mapper = mapper;
        }

        public MallController(IDataRepository<Malls> @object)
        {
            this.@object = @object;
        }

        [HttpPost]
        public async Task<ActionResult<Malls>> Add(ModelApiMall modelApi)
        {
            var books = _mapper.Map<Malls>(modelApi);
            _context.Mall.Add(books);
            await _context.SaveChangesAsync();
            return Ok(_context.Mall);
        }
        [HttpGet]
        public async Task<IActionResult> List()
        {
            if (_context.Mall == null)
            {
                return NoContent();
            }
            var Mall_List = await _context.Mall.ToListAsync();
            return Ok(Mall_List);
        }
        [HttpPut]
        public IActionResult Update(int id, Malls malls)
        {
            if (malls == null)
            {
                return BadRequest("Mall object can't be null");
            }
            if (_context == null)
            {
                return NotFound("Table doesn't exists");
            }
            var Update = _context.Mall.Where(e => e.Id == id).FirstOrDefault();
            if (Update == null)
            {
                return NotFound("Mall with this name doesn't exists");
            }
            _context.Mall.Remove(Update);
            Update.Name = malls.Name;
            Update.City = malls.City;
            Update.State = malls.State;
            Update.Year = malls.Year;
            Update.Mallimg = malls.Mallimg;

            _context.Mall.Update(Update);
            _context.SaveChanges();

            return Ok(_context.Mall);
        }
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeletebyId(int id)
        {
            if (id == null)
            {
                return BadRequest();
            }
            if (_context.Mall == null)
            {
                return NoContent();
            }
            var mall = await _context.Mall.FindAsync(id);
            if (mall == null)
            {
                return NotFound();
            }
            _context.Mall.Remove(mall);
            await _context.SaveChangesAsync();
            return Ok(_context.Mall);
        }

    }
}
