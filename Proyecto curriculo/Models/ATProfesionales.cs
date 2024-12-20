﻿using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace Proyecto_curriculo.Models
{
    public class ATProfesionales
    {
        [MaxLength(255)] 
        public string id_programa { get; set; }

        [Key]
        [MaxLength(50)] 
        public string id { get; set; }

        [MaxLength(255)] 
        public string areas_profesionales { get; set; }

        [MaxLength(255)] 
        public string tareas_profesionales { get; set; }

        [MaxLength(255)]
        public string poblaciones_actuacion { get; set; }

        [ForeignKey("id")]
        public virtual ICollection<perfil_egreso> perfil_egreso { get; set; }


    }
}
