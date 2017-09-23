using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestChequePharmacie_ASP
{
    public partial class Connexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BTN_Connecter_Click(object sender, EventArgs e)
        {
            
            if (IsValid)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("select * from LoginClient where LoginClient = '" + TB_Login.Text + "' and Mot_Pass = '" + TB_MotPass.Text + "'", Provider.cnx);
                    Provider.cnx.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        dr.Read();
                        Session["NomUser"] = dr[2].ToString();
                        Response.Redirect("Accueil.aspx");
                    }
                    else LBL_Info.Text = "Login ou mot de pass  Incorrect ";
                }
                catch (Exception)
                {


                }
                finally
                {

                    Provider.cnx.Close();
                }
            }


        }
    }
}