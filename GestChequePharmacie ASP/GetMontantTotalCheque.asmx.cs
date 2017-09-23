using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace GestChequePharmacie_ASP
{
    /// <summary>
    /// Summary description for GetMontantTotalCheque
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class GetMontantTotalCheque : System.Web.Services.WebService
    {

        [WebMethod]
        public string GetTotal(string Cin)
        {
            string total = "";
            try
            {
                SqlCommand cmd = new SqlCommand("select sum(Montant) from Cheque where CIN = '" + Cin + "'", Provider.cnx);
                Provider.cnx.Open();
                total= cmd.ExecuteScalar().ToString();


            }
            catch (Exception)
            {


            }
            finally
            {
                Provider.cnx.Close();
               
            }
            return total;
        }
    }
}
