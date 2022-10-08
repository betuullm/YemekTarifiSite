using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class YemekGuncelleAdmin : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        { 



            if (!IsPostBack)
            {
               
                SqlCommand komut = new SqlCommand("Select * from Tbl_Yemekler where YemekId=@p1", bgl.SqlBaglanti());
                komut.Parameters.AddWithValue("@p1", Request.QueryString["YemekId"].ToString());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtId.Text = dr["YemekId"].ToString();
                    TxtAd.Text = dr["YemekAd"].ToString();
                    TxtMalzeme.Text = dr["YemekMalzeme"].ToString();
                    TxtTarif.Text = dr["YemekTarif"].ToString();
                    ddlkategori.SelectedValue = dr["KategoriId"].ToString();


                }
                bgl.SqlBaglanti().Close();
                komut.Dispose();
            }
        }

        protected void BtnGuncelle2_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("/img/" + FileUpload1.FileName));
            SqlCommand sqlCommand = new SqlCommand("Update Tbl_Yemekler set YemekAd=@p1,YemekMalzeme=@p2,YemekTarif=@p3, KategoriId=@p5,YemekResim=@p6 where YemekId=@p4",bgl.SqlBaglanti());
            sqlCommand.Parameters.AddWithValue("@p1",TxtAd.Text);
            sqlCommand.Parameters.AddWithValue("@p2",TxtMalzeme.Text);
            sqlCommand.Parameters.AddWithValue("@p3",TxtTarif.Text);
            sqlCommand.Parameters.AddWithValue("@p4", Request.QueryString["YemekId"].ToString());
            sqlCommand.Parameters.AddWithValue("@p5", ddlkategori.SelectedValue);
            sqlCommand.Parameters.AddWithValue("@p6","~/img/" +FileUpload1.FileName);


            sqlCommand.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();



        }

        protected void BtnGnnYmg_Click(object sender, EventArgs e)
        {

            
            //Tüm yemeklerin durumunu false olarak güncelledik.
            SqlCommand komut2 = new SqlCommand("update Tbl_Yemekler set durum=0",bgl.SqlBaglanti());
            komut2.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();

            SqlCommand komut3 = new SqlCommand("update Tbl_Yemekler set durum=1 where YemekId=@p1", bgl.SqlBaglanti());
            komut3.Parameters.AddWithValue("@p1", Request.QueryString["YemekId"].ToString());
            komut3.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();

                }
    }
}