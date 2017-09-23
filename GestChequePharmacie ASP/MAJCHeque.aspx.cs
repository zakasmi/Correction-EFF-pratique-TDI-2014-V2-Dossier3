using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GestChequePharmacie_ASP
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label8.Text = Application["UserCount"].ToString();
        }

        protected void BTN_Ajouter_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                TB_Url_Cheque.Text= FU_Url_Cheque.PostedFile.FileName;
                FU_Url_Cheque.SaveAs(Server.MapPath("")+FU_Url_Cheque.PostedFile.FileName);
               SqlDataSource1.Insert();
                LBL_Info.Text = "Cheque aJouté Avec succes";

            }
        }

        protected void BTN_Supprimer_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Delete();
            LBL_Info.Text = "Le cheque supprimer avec succes";
        }

        protected void BTN_Modifier_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Update();
            LBL_Info.Text = "Cheque Modifier avec succes";

        }

        protected void BTN_Telecharger_Click(object sender, EventArgs e)
        {
            WebClient client = new WebClient(); 
            
   //  client.DownloadFile(Server.MapPath("") + "\\" + TB_Url_Cheque.Text, @"D:\image35.JPg");
        }

        protected void FU_Url_Cheque_Load(object sender, EventArgs e)
        {

        }

        protected void BTN_Generer_XML_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            using (SqlDataAdapter da = new SqlDataAdapter("select *from CHeque",Provider.cnx))
            {
                dt.TableName = "Cheques";
                da.Fill(dt);
               
             dt.WriteXml(Server.MapPath(" ")+ "\\" + "Cheque.XML");
                LBL_Info.Text = "Le fichier XML , genere avec succes en GestChequePharmacie ASP\\..  ";
            }
        }
    }
}