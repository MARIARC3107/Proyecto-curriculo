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
    public class Inst_medicionController : ControllerBase
    {
        private readonly ApplicationDbContext _context;

        public Inst_medicionController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: api/Inst_medicion
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Inst_medicion>>> GetInst_medicion()
        {
            return await _context.Inst_medicion.ToListAsync();
        }

        // GET: api/Inst_medicion/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Inst_medicion>> GetInst_medicion(string id)
        {
            var inst_medicion = await _context.Inst_medicion.FindAsync(id);

            if (inst_medicion == null)
            {
                return NotFound();
            }

            return inst_medicion;
        }

        // PUT: api/Inst_medicion/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutInst_medicion(string id, Inst_medicion inst_medicion)
        {
            if (id != inst_medicion.resultado_ap)
            {
                return BadRequest();
            }

            _context.Entry(inst_medicion).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!Inst_medicionExists(id))
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

        // POST: api/Inst_medicion
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Inst_medicion>> PostInst_medicion(Inst_medicion inst_medicion)
        {
            _context.Inst_medicion.Add(inst_medicion);
            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateException)
            {
                if (Inst_medicionExists(inst_medicion.resultado_ap))
                {
                    return Conflict();
                }
                else
                {
                    throw;
                }
            }

            return CreatedAtAction("GetInst_medicion", new { id = inst_medicion.resultado_ap }, inst_medicion);
        }

        // DELETE: api/Inst_medicion/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteInst_medicion(string id)
        {
            var inst_medicion = await _context.Inst_medicion.FindAsync(id);
            if (inst_medicion == null)
            {
                return NotFound();
            }

            _context.Inst_medicion.Remove(inst_medicion);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool Inst_medicionExists(string id)
        {
            return _context.Inst_medicion.Any(e => e.resultado_ap == id);
        }
    }
}
