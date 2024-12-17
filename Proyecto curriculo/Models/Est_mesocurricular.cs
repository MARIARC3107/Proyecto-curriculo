using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Proyecto_curriculo.Models
{
    public class Est_mesocurricular

    {
        [ForeignKey("id_restultado")]
        [Key]
        [MaxLength(50)]
        public string id_restultado { get; set; }

        [MaxLength(100)]
        public string estrategia_programa { get; set; }

        [MaxLength(600)]
        public string descripcion { get; set; }

        public virtual Ind_impacto Ind_impacto { get; set; }
        public virtual Ac_retroal Ac_retroal { get; set; }
        public virtual Inst_medicion Inst_medicion { get; set; }
    }
}
