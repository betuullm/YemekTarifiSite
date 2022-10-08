using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler where KategoriId=@p1", bgl.SqlBaglanti());
                komut.Parameters.AddWithValue("@p1", Request.QueryString["KategoriId"].ToString());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtId.Text = dr["KategoriId"].ToString();
                    TxtAd.Text = dr["KategoriAd"].ToString();
                    TxtAdet.Text = dr["KategoriAdet"].ToString();


                }
                bgl.SqlBaglanti().Close();
                komut.Dispose();
            }
        }
        protected void BtnGuncelle2_Click(object sender, EventArgs e)
        {
            SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2 where KategoriId=@p3",bgl.SqlBaglanti());
            komut2.Parameters.AddWithValue("@p1",TxtAd.Text);
            komut2.Parameters.AddWithValue("@p2",TxtAdet.Text);
            komut2.Parameters.AddWithValue("@p3", Request.QueryString["KategoriId"].ToString());
            komut2.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();
        
        } 
    }
}