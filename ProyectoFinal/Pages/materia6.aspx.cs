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
    public partial class materia6 : System.Web.UI.Page
    {
        int id_rol = 0;
        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            CargarTabla();
            Response.AppendHeader("Cache-Control", "no-store");

            if (!IsPostBack && Session["correo"] != null)
            {
                id_rol = Convert.ToInt32(Session["id_rol"].ToString());
                Permisos(id_rol);
            }

            void CargarTabla()
            {
                SqlCommand cmd = new SqlCommand("sp_loadM6", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                gvmateria1.DataSource = dt;
                gvmateria1.DataBind();
                con.Close();
            }

            void Permisos(int id_rol)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("sp_permisos", con);
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Id_rol", SqlDbType.Int).Value = id_rol;
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    bool Create, Read, Update, Delete;
                    while (reader.Read())
                    {
                        foreach (GridViewRow fila in gvmateria1.Rows)
                        {

                            switch (reader[0].ToString())
                            {
                                case "Create":
                                    Create = Convert.ToBoolean(reader[1].ToString());

                                    if (Create)
                                        btncreate.Visible = true;
                                    else
                                        btncreate.Visible = false;
                                    break;
                                case "Read":
                                    Read = Convert.ToBoolean(reader[1].ToString());
                                    Button btn1 = fila.FindControl("btnread") as Button;

                                    if (Read)
                                    {
                                        btn1.Visible = true;
                                        gvmateria1.Visible = true;
                                    }
                                    else
                                    {
                                        btn1.Visible = false;
                                        gvmateria1.Visible = false;
                                    }

                                    break;
                                case "Update":
                                    Update = Convert.ToBoolean(reader[1].ToString());
                                    Button btn2 = fila.FindControl("btnupdate") as Button;
                                    if (Update)
                                        btn2.Visible = true;
                                    else
                                        btn2.Visible = false;
                                    break;
                                case "Delete":
                                    Delete = Convert.ToBoolean(reader[1].ToString());
                                    Button btn3 = fila.FindControl("btndelete") as Button;
                                    if (Delete)
                                        btn3.Visible = true;
                                    else
                                        btn3.Visible = false;
                                    break;
                            }
                        }
                    }
                    con.Close();
                    reader.Close();
                }
                catch (Exception)
                {
                    throw;
                }
            }
        }

        protected void btnread_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Pages/CRUD6.aspx?id=" + id + "&op=R");
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Pages/CRUD6.aspx?id=" + id + "&op=U");
        }

        protected void btndelete_Click(object sender, EventArgs e)
        {
            string id;
            Button BtnConsultar = (Button)sender;
            GridViewRow selectedrow = (GridViewRow)BtnConsultar.NamingContainer;
            id = selectedrow.Cells[1].Text;
            Response.Redirect("~/Pages/CRUD6.aspx?id=" + id + "&op=D");
        }

        protected void btncreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/CRUD6.aspx?op=C");
        }
    }
}