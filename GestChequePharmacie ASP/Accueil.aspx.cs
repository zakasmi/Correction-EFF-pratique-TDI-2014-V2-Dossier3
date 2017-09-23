using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestChequePharmacie_ASP
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["NomUser"] != null)
            {
                if (!Page.IsPostBack)
                {
                    LBL_NomUser.Text = Session["NomUser"].ToString();

                }
                LBL_USERCount.Text = Application["UserCount"].ToString();

            }
            else Response.Redirect("Connexion.aspx");
        }
    }
}