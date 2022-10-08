using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public class sqlBaglanti
    {
        public SqlConnection SqlBaglanti()
        {
            SqlConnection baglanti= new SqlConnection(@"Data Source=.;Initial Catalog=Dbo_yemektarifi;Integrated Security=True");
            baglanti.Open();
            return baglanti;
            

        }
    }
}