using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExamenFinal
{
    public partial class Loggin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BIngresar_Click(object sender, EventArgs e)
        {
            Usuario.Email = TEmail.Text;
            Usuario.clave = TClave.Text;

            String s = System.Configuration.ConfigurationManager.ConnectionStrings["VEHICULOSConnectionString"].ConnectionString;
            SqlConnection conexion = new SqlConnection(s);
            conexion.Open();
            SqlCommand comando = new SqlCommand("select Usuario, clave from Usuarios where Usuario = '" + Usuario.Email + "' " +
                "and clave = '" + Usuario.clave + "'", conexion);
            SqlDataReader registro = comando.ExecuteReader();
            if (registro.Read())
            {
                Response.Redirect("Inicio.aspx");
            }
            else
            {
                LError.Text = " usuario o contraseña incorrecto";
            }


            conexion.Close();
        }
    }
}