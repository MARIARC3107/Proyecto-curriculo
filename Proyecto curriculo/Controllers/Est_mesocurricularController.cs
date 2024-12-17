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
    public class Est_mesocurricularController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public Est_mesocurricularController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Est_mesocurricular
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Est_mesocurricular>>> GetEst_mesocurricular()
        {
            return await _context.Est_mesocurricular.ToListAsync();
        }

        // GET: api/Est_mesocurricular/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Est_mesocurricular>> GetEst_mesocurricular(string id)
        {
            var est_mesocurricular = await _context.Est_mesocurricular.FindAsync(id);

            if (est_mesocurricular == null)
            {
                return NotFound();
            }

            return est_mesocurricular;
        }

        // PUT: api/Est_mesocurricular/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutEst_mesocurricular(string id, Est_mesocurricular est_mesocurricular)
        {
            if (id != est_mesocurricular.resultado_ap)
            {
                return BadRequest();
            }

            _context.Entry(est_mesocurricular).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Est_mesocurricularExists(id))
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

        // POST: api/Est_mesocurricular
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Est_mesocurricular>> PostEst_mesocurricular(Est_mesocurricular est_mesocurricular)
        {
            _context.Est_mesocurricular.Add(est_mesocurricular);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (Est_mesocurricularExists(est_mesocurricular.resultado_ap))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetEst_mesocurricular", new { id = est_mesocurricular.resultado_ap }, est_mesocurricular);
        }

        // DELETE: api/Est_mesocurricular/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteEst_mesocurricular(string id)
        {
            var est_mesocurricular = await _context.Est_mesocurricular.FindAsync(id);
            if (est_mesocurricular == null)
            {
                return NotFound();
            }

            _context.Est_mesocurricular.Remove(est_mesocurricular);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool Est_mesocurricularExists(string id)
        {
            return _context.Est_mesocurricular.Any(e => e.resultado_ap == id);
        }
    }
}
