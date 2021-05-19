using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using CapaDatos;
using System.Data;


namespace CapaNegocio
{
    public class NArticulo
    {
        // Metodo Insertar que llama al métoodo Insertar de DArticulo de la CapaDatos
        public static string Insertar(string codigo,string nombre, string descripcion,byte[] imagen, int idcategoria, int idpresentacion)
        {
            DArticulo Obj = new DArticulo();
            Obj.Codigo = codigo;
            Obj.Nombre = nombre;
            Obj.Descripcion = descripcion;
            Obj.Imagen = imagen;
            Obj.Idcategoria = idcategoria;
            Obj.Idpresentacion = idpresentacion;

            return Obj.Insertar(Obj);
        }

        // Metodo Editar que llama al métoodo Editar de DArticulo de la CapaDatos
        public static string Editar(int idarticulo,string codigo, string nombre, string descripcion, byte[] imagen, int idcategoria, int idpresentacion)
        {
            DArticulo Obj = new DArticulo();
            Obj.Idarticulo = idarticulo;
            Obj.Codigo = codigo;
            Obj.Nombre = nombre;
            Obj.Descripcion = descripcion;
            Obj.Imagen = imagen;
            Obj.Idcategoria = idcategoria;
            Obj.Idpresentacion = idpresentacion;

            return Obj.Editar(Obj);
        }

        // Metodo Eliminar que llama al métoodo Eliminar de DArticulo de la CapaDatos
        public static string Eliminar(int idarticulo)
        {
            DArticulo Obj = new DArticulo();
            Obj.Idarticulo = idarticulo;
            return Obj.Eliminar(Obj);
        }

        // Metodo Mostrar que llama al métoodo Mostrar de DArticulo de la CapaDatos
        public static DataTable Mostrar()
        {
            return new DArticulo().Mostrar();
        }

        // Metodo BuscarNombre que llama al métoodo BuscarNombre de DArticulo de la CapaDatos
        public static DataTable BuscarNombre(string textobuscar)
        {
            DArticulo Obj = new DArticulo();
            Obj.TextoBuscar = textobuscar;
            return Obj.BuscarNombre(Obj);
        }

        // Metodo Stock_Articulos que llama al métoodo Stock_Articulos de DArticulo de la CapaDatos
        public static DataTable Stock_Articulos()
        {
            return new DArticulo().Stock_Articulos();
        }


    }
}
