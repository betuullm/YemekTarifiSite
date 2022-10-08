using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class AdminTarifler : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel4.Visible = false;
            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=0", bgl.SqlBaglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            dr.Close();
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Tarifler where TarifDurum=1", bgl.SqlBaglanti());
            SqlDataReader dr2 = komut.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible=true;
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