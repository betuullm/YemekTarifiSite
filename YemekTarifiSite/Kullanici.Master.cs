using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Select * From Tbl_Kategoriler",bgl.SqlBaglanti());
            SqlDataReader oku = komut.ExecuteReader();  
            DataList1.DataSource = oku;
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}