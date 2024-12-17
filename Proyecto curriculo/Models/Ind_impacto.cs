using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Proyecto_curriculo.Models
{
    public class Ind_impacto
    {
        [ForeignKey("id_restultado")]
        [Key]
        [MaxLength(50)]
        public string id_restultado { get; set; }


        [MaxLength(100)]
        public string estrategia_programa { get; set; }

        [MaxLength(200)]
        public string ind_impacto { get; set; }

        [ForeignKey("resultado_ap")]

        public virtual ICollection<Est_mesocurricular> Est_mesocurricular { get; set; }

    }
}
