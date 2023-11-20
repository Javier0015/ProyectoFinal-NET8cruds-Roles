using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal.Pages
{
    public partial class Registrarse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.AppendHeader("Cache-Control", "no-store");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ToString());
        string Patron = "InfoToolsSV";

        void Limpiar()
        {
            nombre.Text= string.Empty;
            edad.Text= string.Empty;
            correo.Text= string.Empty;
            contraseña.Text= string.Empty;
        }

        protected void Registrar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("sp_registrar", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.Add("@Nombre", System.Data.SqlDbType.VarChar).Value=nombre.Text;
                cmd.Parameters.Add("@Edad", System.Data.SqlDbType.Int).Value=edad.Text;
                cmd.Parameters.Add("@Correo", System.Data.SqlDbType.VarChar).Value=correo.Text;
                cmd.Parameters.Add("@Contraseña", System.Data.SqlDbType.VarChar).Value=contraseña.Text;
                cmd.Parameters.Add("@Patron", System.Data.SqlDbType.VarChar).Value=Patron;
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Limpiar();
                Response.Redirect("inicio.aspx");

            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}