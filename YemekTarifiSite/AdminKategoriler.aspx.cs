using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class AdminKategoriler : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        String id = "";
        String islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                id=Request.QueryString["KategoriId"];
                islem = Request.QueryString["islem"];
            }
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler",bgl.SqlBaglanti());
            SqlDataReader dr =komut.ExecuteReader();
            DataList1.DataSource=dr;
            DataList1.DataBind();

            if (islem == "sil")
            {
                SqlCommand komutsil = new SqlCommand("Delete from Tbl_Kategoriler where KategoriId=@p1", bgl.SqlBaglanti());
                komutsil.Parameters.AddWithValue("@p1", id);
                komutsil.ExecuteNonQuery();
                bgl.SqlBaglanti().Close();
            }
            
            Panel2.Visible=false;
            Panel4.Visible=false;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("Insert into Tbl_Kategoriler (KategoriAd,KategoriResim) values (@p1,@p2)", bgl.SqlBaglanti());
            komut2.Parameters.AddWithValue("@p1", TxtKategoriAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtKategoriİkon.Text);
            komut2.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();
    

        }

       
    }
}