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
    public class Ind_impactoController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public Ind_impactoController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Ind_impacto
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Ind_impacto>>> GetInd_impacto()
        {
            return await _context.Ind_impacto.ToListAsync();
        }

        // GET: api/Ind_impacto/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Ind_impacto>> GetInd_impacto(string id)
        {
            var ind_impacto = await _context.Ind_impacto.FindAsync(id);

            if (ind_impacto == null)
            {
                return NotFound();
            }

            return ind_impacto;
        }

        // PUT: api/Ind_impacto/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutInd_impacto(string id, Ind_impacto ind_impacto)
        {
            if (id != ind_impacto.resultado_ap)
            {
                return BadRequest();
            }

            _context.Entry(ind_impacto).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Ind_impactoExists(id))
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

        // POST: api/Ind_impacto
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Ind_impacto>> PostInd_impacto(Ind_impacto ind_impacto)
        {
            _context.Ind_impacto.Add(ind_impacto);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (Ind_impactoExists(ind_impacto.resultado_ap))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetInd_impacto", new { id = ind_impacto.resultado_ap }, ind_impacto);
        }

        // DELETE: api/Ind_impacto/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteInd_impacto(string id)
        {
            var ind_impacto = await _context.Ind_impacto.FindAsync(id);
            if (ind_impacto == null)
            {
                return NotFound();
            }

            _context.Ind_impacto.Remove(ind_impacto);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool Ind_impactoExists(string id)
        {
            return _context.Ind_impacto.Any(e => e.resultado_ap == id);
        }
    }
}
