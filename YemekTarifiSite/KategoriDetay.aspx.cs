using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class KategoriDetay : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
    
        protected void Page_Load(object sender, EventArgs e)
        {  
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where KategoriId = @p1", bgl.SqlBaglanti());
            komut.Parameters.AddWithValue("@p1", Request.QueryString["KategoriId"].ToString());
            SqlDataReader dr = komut.ExecuteReader();
            DataList2.DataSource = dr;
            DataList2.DataBind();
        }
    }
}