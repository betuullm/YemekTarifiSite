using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            if (!IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", bgl.SqlBaglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtHakkimizda.Text = dr["Metin"].ToString();
                }
                bgl.SqlBaglanti().Close();

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set metin=@p1",bgl.SqlBaglanti());
            komut.Parameters.AddWithValue("@p1", TxtHakkimizda.Text);
            komut.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();

        }
    }
}