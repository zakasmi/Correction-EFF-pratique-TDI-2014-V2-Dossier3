using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace GestChequePharmacie_ASP
{
    public class Provider
    {
        public static SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=GestProdPharma;Integrated Security=True");
       
    }
}