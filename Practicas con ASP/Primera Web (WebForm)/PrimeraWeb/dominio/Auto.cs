using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace dominio
{
    public class Auto
    {
        public int IdAuto { get; set; }
        public string Modelo { get; set; }
        public string Descripcion { get; set; }
        public string Color { get; set; }
        public DateTime Fecha { get; set; }
        public bool Usado { get; set; }
        public bool Importado { get; set; }
    }

    public class AutoNegocio
    {
        public List<Auto> listar()
        {
            List<Auto> list = new List<Auto>();
            list.Add(new Auto());
            //list.Add(new Auto());

            list[0].IdAuto = 1;
            list[0].Modelo = "Golf";
            list[0].Descripcion = "Auto seguro";
            list[0].Color = "Negro";
            list[0].Fecha = DateTime.Now;
            list[0].Usado = true;
            list[0].Importado = true;

            return list;
        }

    }
}


