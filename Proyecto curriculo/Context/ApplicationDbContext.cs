using Microsoft.EntityFrameworkCore;
using Proyecto_curriculo.Models;

namespace Proyecto_curriculo.Context
{
    public class ApplicationDbContext : DbContext
    {
        public DbSet<perfil_egreso> perfil_egreso { get; set; }
        public DbSet<Saber> Saber { get; set; }
        public DbSet<ATProfesionales> ATProfesionales { get; set; }
        public DbSet<AProfesional> AProfesional { get; set; }
        public DbSet<PActuacion> PActuacion { get; set; }
        public DbSet<VAgregado> VAgregado { get; set; }
        public DbSet<Competencias> Competencias { get; set; }
        public DbSet<Res_aprendizaje> Res_aprendizaje { get; set; }
        public DbSet<Est_mesocurricular> Est_mesocurricular { get; set; }
        public DbSet<Ind_impacto> Ind_impacto { get; set; }
        public DbSet<Ac_retroal> Ac_retroal { get; set; }
        public DbSet<Inst_medicion> Inst_medicion { get; set; }


        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options)
        : base(options)
        {
        }
    }
}
