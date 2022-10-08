using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace YemekTarifiSite
{
    public partial class TarifDetay : System.Web.UI.Page
    {
        sqlBaglanti bgl = new  sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Tarifler where TarifId=@p1", bgl.SqlBaglanti());
                komut.Parameters.AddWithValue("@p1", Request.QueryString["TarifId"].ToString());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                
                    TxtAd.Text = dr["TarifAd"].ToString();
                    TxtMail.Text = dr["TarifSahipMail"].ToString();
                    TxtMalzeme.Text = dr["TarifMalzeme"].ToString();
                    TxtTarif.Text = dr["TarifYapilisi"].ToString();
                    TxtAdSoyad.Text = dr["TarifSahip"].ToString();
                    

                }
                bgl.SqlBaglanti().Close();
                komut.Dispose();
                SqlCommand komut2 = new SqlCommand("Select * from Tbl_Kategoriler",bgl.SqlBaglanti());
                SqlDataReader dr2 = komut2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "KategoriId";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }

        }

        protected void BtnKaydet_Click(object sender, EventArgs e)
        {
            //Durum Güncelleme
            SqlCommand komut = new SqlCommand("update Tbl_Tarifler set TarifDurum=1 where TarifId=@p1", bgl.SqlBaglanti());
            komut.Parameters.AddWithValue("@p1", Request.QueryString["TarifId"].ToString());
            komut.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();

            SqlCommand komut2 = new SqlCommand("insert into Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif,KategoriId) values(@p1,@p2,@p3,@p4 )",bgl.SqlBaglanti());
            komut2.Parameters.AddWithValue("@p1", TxtAd.Text);
            komut2.Parameters.AddWithValue("@p2", TxtMalzeme.Text);
            komut2.Parameters.AddWithValue("@p3", TxtTarif.Text);
            komut2.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();

            SqlCommand komut3 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 ",bgl.SqlBaglanti());
            komut3.ExecuteNonQuery();

            
        
        }
    }
}