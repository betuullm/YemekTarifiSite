using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    
    public partial class AdminYorumlar : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel4.Visible = false;

            //Onaylı Listeleme
            SqlCommand listele = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1 ORDER BY YorumTarih desc", bgl.SqlBaglanti());
            SqlDataReader dr = listele.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            bgl.SqlBaglanti().Close();

            //Onaysız Listeleme
            SqlCommand listele2 = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=0 ORDER BY YorumTarih desc", bgl.SqlBaglanti());
            SqlDataReader dr2 = listele2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();
            bgl.SqlBaglanti().Close();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }
    }
}