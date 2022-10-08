using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class TarifOner : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Insert into Tbl_Tarifler ( TarifAd, TarifMalzeme, TarifYapilisi, TarifResim, TarifSahipMail, TarifSahip) values ( @t1,@t2, @t3, @t4, @t5, @t6) ", bgl.SqlBaglanti());
            komut.Parameters.AddWithValue("@t1",TxtTarifAdi.Text);
            komut.Parameters.AddWithValue("@t2",TextTarifMalzeme.Text);
            komut.Parameters.AddWithValue("@t3",TxtTarifYapilisi.Text);
            komut.Parameters.AddWithValue("@t4",FileUploadFotograf.FileName);
            komut.Parameters.AddWithValue("@t5",TxtTarifSahibiAdi.Text);
            komut.Parameters.AddWithValue("@t6",TxtTarifSahibiMaili.Text);
            komut.ExecuteNonQuery();
            bgl.SqlBaglanti().Close();
            Response.Write("Tarifiniz Alınmıştır.");
        }
    }
}