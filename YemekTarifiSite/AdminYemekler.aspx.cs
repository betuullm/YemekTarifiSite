using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class AdminYemekler : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        String id = "";
        String islem = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack) {
                id = Request.QueryString["YemekId"];
                islem = Request.QueryString["islem"];

            }
            //Yemek Listesi
            SqlCommand cmd = new SqlCommand("Select * from Tbl_Yemekler",bgl.SqlBaglanti()); 
            SqlDataReader dr = cmd.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();
            //Kategori Listesi
            SqlCommand cmd2 = new SqlCommand("Select * from Tbl_Kategoriler", bgl.SqlBaglanti());
            SqlDataReader dr2 = cmd2.ExecuteReader();

            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField ="KategoriId";

            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

                if (islem == "sil")
                {
                    SqlCommand komutsil = new SqlCommand("Delete from Tbl_Yemekler where YemekId=@p1", bgl.SqlBaglanti());
                    komutsil.Parameters.AddWithValue("@p1", id);
                    komutsil.ExecuteNonQuery();
                    bgl.SqlBaglanti().Close();
                }

                //Panel durumu
                Panel2.Visible = false;
            Panel4.Visible = false;
                
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

        protected void BtnEkle_Click(object sender, EventArgs e)
        {   //yemek ekle
            SqlCommand cmd3 = new SqlCommand("Insert into Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif,KategoriId) values (@p1,@p2,@p3,@p4)",bgl.SqlBaglanti());
            cmd3.Parameters.AddWithValue("@p1", TxtYemekAd.Text);
            cmd3.Parameters.AddWithValue("@p2", TxtYemekmalzeme.Text);
            cmd3.Parameters.AddWithValue("@p3", TxtyemekYapilisi.Text);
            cmd3.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
            cmd3.ExecuteNonQuery();//Sorguyu Çalıştır.
            bgl.SqlBaglanti().Close();

            //kategori arttır
            SqlCommand komut = new SqlCommand("Update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriId=@p1",bgl.SqlBaglanti());
            komut.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
            komut.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();
        
        }

    }
}