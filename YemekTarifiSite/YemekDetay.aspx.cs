using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlBaglanti bgl= new sqlBaglanti();
        String yemekId;
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekId = Request.QueryString["yemekId"];
            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where yemekId=@p1",bgl.SqlBaglanti());
            komut.Parameters.AddWithValue("@p1",yemekId);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                Label2.Text = oku[0].ToString();
            }

            bgl.SqlBaglanti().Close();

            //Yorumları Listeleme
            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Yorumlar where yemekId=@p2 and YorumOnay=1",bgl.SqlBaglanti());
            komut2.Parameters.AddWithValue("@p2", yemekId);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource= dr2;
            DataList2.DataBind();
        
        
        }

        protected void BtnYorum_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Yorumlar (YorumAdSoyad, YorumMail,Yorumİcerik,YemekId) values (@p1,@p2,@p3,@p4)",bgl.SqlBaglanti());
            komut.Parameters.AddWithValue("@p1", TxtAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtYorum.Text);
            komut.Parameters.AddWithValue("@p4", yemekId);
            komut.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();
            Response.Write("Yorumunuz Alınmıştır.");
        }
    }
}