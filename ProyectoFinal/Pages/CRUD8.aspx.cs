using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyectoFinal.Pages
{
    public partial class CRUD8 : System.Web.UI.Page
    {
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public static string sID = "-1";
        public static string sOpc = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            //obtener id
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    sID = Request.QueryString["id"].ToString();
                    CargarDatos();
                }

                if (Request.QueryString["op"] != null)
                {
                    sOpc = Request.QueryString["op"].ToString();
                    switch (sOpc)
                    {
                        case "C":
                            this.lbltitulo.Text = "Ingresar nuevos datos";
                            this.btncreate.Visible = true;
                            break;
                        case "R":
                            this.lbltitulo.Text = "Consultar datos";
                            break;
                        case "U":
                            this.lbltitulo.Text = "Modificar datos";
                            this.btnupdate.Visible = true;
                            break;
                        case "D":
                            this.lbltitulo.Text = "Eliminar datos";
                            this.btndelete.Visible = true;
                            break;
                    }
                }
            }
        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_createM8", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@NombreM1", SqlDbType.VarChar).Value = tbnombre.Text;
            cmd.Parameters.Add("@HorasporsemanaM1", SqlDbType.Int).Value = Convert.ToInt32(tbhps.Text);
            cmd.Parameters.Add("@CalificacionfinalM1", SqlDbType.Int).Value = Convert.ToInt32(tbcfinal.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("materia8.aspx");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_updateM8", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@IdM1", SqlDbType.Int).Value = sID;
            cmd.Parameters.Add("@NombreM1", SqlDbType.VarChar).Value = tbnombre.Text;
            cmd.Parameters.Add("@HorasporsemanaM1", SqlDbType.Int).Value = Convert.ToInt32(tbhps.Text);
            cmd.Parameters.Add("@CalificacionfinalM1", SqlDbType.Int).Value = Convert.ToInt32(tbcfinal.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("materia8.aspx");
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("sp_deleteM8", con);
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add("@IdM1", SqlDbType.Int).Value = sID;
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("materia8.aspx");
        }

        protected void btnvolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("materia8.aspx");
        }
        void CargarDatos()
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter("sp_readM8", con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            da.SelectCommand.Parameters.Add("@IdM1", SqlDbType.Int).Value = sID;
            DataSet ds = new DataSet();
            ds.Clear();
            da.Fill(ds);
            DataTable dt = ds.Tables[0];
            DataRow row = dt.Rows[0];
            tbnombre.Text = row[1].ToString();
            tbhps.Text = row[2].ToString();
            tbcfinal.Text = row[3].ToString();
            con.Close();
        }
    }
}