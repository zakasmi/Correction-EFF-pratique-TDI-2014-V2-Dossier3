using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestChequePharmacie_ASP
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(TB_CIN.Text))
            {
                GetMontantTotalCheque S = new GetMontantTotalCheque();
                Label3.Text = S.GetTotal(TB_CIN.Text);

            }
            else Label4.Text = "Saisie Le CIN";
        }
    }
}