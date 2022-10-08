using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace YemekTarifiSite
{
    public partial class Mesajlar : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            SqlCommand listele = new SqlCommand("Select * from Tbl_Mesajlar ORDER BY mesajTarih desc", bgl.SqlBaglanti());
            SqlDataReader dr = listele.ExecuteReader();
            DataList1.DataSource= dr;
            DataList1.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }
    }
}