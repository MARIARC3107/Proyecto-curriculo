using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Proyecto_curriculo.Context;
using Proyecto_curriculo.Models;

namespace Proyecto_curriculo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class Ac_retroalController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public Ac_retroalController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Ac_retroal
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Ac_retroal>>> GetAc_retroal()
        {
            return await _context.Ac_retroal.ToListAsync();
        }

        // GET: api/Ac_retroal/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Ac_retroal>> GetAc_retroal(string id)
        {
            var ac_retroal = await _context.Ac_retroal.FindAsync(id);

            if (ac_retroal == null)
            {
                return NotFound();
            }

            return ac_retroal;
        }

        // PUT: api/Ac_retroal/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAc_retroal(string id, Ac_retroal ac_retroal)
        {
            if (id != ac_retroal.resultado_ap)
            {
                return BadRequest();
            }

            _context.Entry(ac_retroal).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Ac_retroalExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Ac_retroal
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Ac_retroal>> PostAc_retroal(Ac_retroal ac_retroal)
        {
            _context.Ac_retroal.Add(ac_retroal);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (Ac_retroalExists(ac_retroal.resultado_ap))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetAc_retroal", new { id = ac_retroal.resultado_ap }, ac_retroal);
        }

        // DELETE: api/Ac_retroal/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAc_retroal(string id)
        {
            var ac_retroal = await _context.Ac_retroal.FindAsync(id);
            if (ac_retroal == null)
            {
                return NotFound();
            }

            _context.Ac_retroal.Remove(ac_retroal);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool Ac_retroalExists(string id)
        {
            return _context.Ac_retroal.Any(e => e.resultado_ap == id);
        }
    }
}
