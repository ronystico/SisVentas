using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

using CapaNegocio;

namespace CapaPresentacion
{
    public partial class FrmVistaArticulo_Venta : Form
    {
        public FrmVistaArticulo_Venta()
        {
            InitializeComponent();
        }

        // Ocultar columnas
        private void OcultarColumnas()
        {
            this.dataListado.Columns[0].Visible = false;
            this.dataListado.Columns[1].Visible = false;
        }

        // Método BuscarNombre
        private void MostrarArticulo_Venta_Nombre()
        {
            this.dataListado.DataSource = NVenta.MostrarArticulo_Venta_Nombre(this.txtBuscar.Text);
            this.OcultarColumnas();
            lblTotal.Text = "Total de Registros: " + Convert.ToString(dataListado.Rows.Count);
        }

        // Método BuscarCodigo
        private void MostrarArticulo_Venta_Codigo()
        {
            this.dataListado.DataSource = NVenta.MostrarArticulo_Venta_Codigo(this.txtBuscar.Text);
            this.OcultarColumnas();
            lblTotal.Text = "Total de Registros: " + Convert.ToString(dataListado.Rows.Count);
        }

        private void FrmVistaArticulo_Venta_Load(object sender, EventArgs e)
        {

        }

        private void BtnBuscar_Click(object sender, EventArgs e)
        {
            if (cbBuscar.Text.Equals("Codigo"))
            {
                this.MostrarArticulo_Venta_Codigo();
            }
            else if (cbBuscar.Text.Equals("Nombre"))
            {
                this.MostrarArticulo_Venta_Nombre();
            }
        }

        private void DataListado_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void DataListado_DoubleClick(object sender, EventArgs e)
        {
            FrmVenta form = FrmVenta.GetInstancia();
            string par1, par2;
            decimal par3, par4;
            int par5;
            DateTime par6;

            par1 = Convert.ToString(this.dataListado.CurrentRow.Cells["iddetalle_ingreso"].Value);
            par2 = Convert.ToString(this.dataListado.CurrentRow.Cells["nombre"].Value);
            par3 = Convert.ToDecimal(this.dataListado.CurrentRow.Cells["precio_compra"].Value);
            par4 = Convert.ToDecimal(this.dataListado.CurrentRow.Cells["precio_venta"].Value);
            par5 = Convert.ToInt32(this.dataListado.CurrentRow.Cells["stock_actual"].Value);
            par6 = Convert.ToDateTime(this.dataListado.CurrentRow.Cells["fecha_vencimiento"].Value);

            form.setArticulo(par1, par2, par3, par4, par5, par6);
            this.Hide();
        }
    }
    }

