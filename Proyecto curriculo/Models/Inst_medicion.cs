using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Proyecto_curriculo.Models
{
    public class Inst_medicion
    {
        [ForeignKey("id_restultado")]
        [Key]
        [MaxLength(600)]
        public string resultado_ap { get; set; }

        [ForeignKey("estrategia_programa")]
        
        [MaxLength(100)]
        public string estrategia_programa { get; set; }

        [MaxLength(200)]
        public string inst_medicion { get; set; }

        public virtual ICollection<Est_mesocurricular> Est_mesocurricular { get; set; }
    }
}
