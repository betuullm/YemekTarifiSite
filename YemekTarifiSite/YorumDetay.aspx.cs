using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YorumDetay : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                SqlCommand komut = new SqlCommand("Select YorumId,YorumAdSoyad,YorumMail,Yorumİcerik,YemekAd from Tbl_Yorumlar inner join Tbl_Yemekler on Tbl_Yorumlar.YemekId=Tbl_Yemekler.YemekId where YorumId=@p1", bgl.SqlBaglanti());
                komut.Parameters.AddWithValue("@p1", Request.QueryString["YorumId"].ToString());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtId.Text = dr["YorumId"].ToString();
                    TxtAd.Text = dr["YorumAdSoyad"].ToString();
                    TxtMail.Text = dr["YorumMail"].ToString();
                    TxtIcerik.Text = dr["Yorumİcerik"].ToString();
                    TxtYemek.Text = dr["YemekAd"].ToString();
                    
                }
                bgl.SqlBaglanti().Close();
                komut.Dispose();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand sql = new SqlCommand("update Tbl_Yorumlar set YorumOnay=1 where YorumId=@p1",bgl.SqlBaglanti());
            sql.Parameters.AddWithValue("@p1", Request.QueryString["YorumId"].ToString());
            sql.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();
            Response.Redirect("AdminYorumlar.aspx");
        }
    }
}