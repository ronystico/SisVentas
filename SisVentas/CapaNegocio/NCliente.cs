using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using CapaDatos;

namespace CapaNegocio
{
    public class NCliente
    {
        // Métodos para comunicar con la capa datos
        // Metodo Insertar que llama al métoodo Insertar de DCliente de la CapaDatos
        public static string Insertar(string nombre, string apellidos,string sexo, 
            DateTime fecha_nacimiento,
            string tipo_documento, string num_documento,
            string direccion, string telefono, string email)
        {
            DCliente Obj = new DCliente();
            Obj.Nombre = nombre;
            Obj.Apellidos = apellidos;
            Obj.Sexo = sexo;
            Obj.Fecha_Nacimiento = fecha_nacimiento;
            Obj.Tipo_Documento = tipo_documento;
            Obj.Num_Documento = num_documento;
            Obj.Direccion = direccion;
            Obj.Telefono = telefono;
            Obj.Email = email;

            return Obj.Insertar(Obj);
        }

        // Metodo Editar que llama al métoodo Editar de DCliente de la CapaDatos
        public static string Editar(int idcliente, string nombre, string apellidos, string sexo,
            DateTime fecha_nacimiento,
            string tipo_documento, string num_documento,
            string direccion, string telefono, string email)
        {
            DCliente Obj = new DCliente();
            Obj.Idcliente = idcliente;
            Obj.Nombre = nombre;
            Obj.Apellidos = apellidos;
            Obj.Sexo = sexo;
            Obj.Fecha_Nacimiento = fecha_nacimiento;
            Obj.Tipo_Documento = tipo_documento;
            Obj.Num_Documento = num_documento;
            Obj.Direccion = direccion;
            Obj.Telefono = telefono;
            Obj.Email = email;

            return Obj.Editar(Obj);
        }

        // Metodo Eliminar que llama al métoodo Eliminar de DCliente de la CapaDatos
        public static string Eliminar(int idcliente)
        {
            DCliente Obj = new DCliente();
            Obj.Idcliente = idcliente;
            return Obj.Eliminar(Obj);
        }

        // Metodo Mostrar que llama al métoodo Mostrar de DCliente de la CapaDatos
        public static DataTable Mostrar()
        {
            return new DCliente().Mostrar();
        }

        // Metodo BuscarRazon_Social que llama al métoodo BuscarApellidos de DCliente de la CapaDatos
        public static DataTable BuscarApellidos(string textobuscar)
        {
            DCliente Obj = new DCliente();
            Obj.TextoBuscar = textobuscar;
            return Obj.BuscarApellidos(Obj);
        }

        // Metodo BuscarNum_Documento que llama al métoodo BuscarNum_Documento de DCliente de la CapaDatos
        public static DataTable BuscarNum_Documento(string textobuscar)
        {
            DCliente Obj = new DCliente();
            Obj.TextoBuscar = textobuscar;
            return Obj.BuscarNum_Documento(Obj);
        }

    }
}
