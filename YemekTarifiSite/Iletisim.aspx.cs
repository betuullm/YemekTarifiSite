using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class Iletisim : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();    
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Btnİletisim_Click(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                SqlCommand komut = new SqlCommand("Insert into Tbl_Mesajlar (mesajGonderen, mesajBaslik, mesajMail, mesajİcerik) values (@p1,@p2,@p3,@p4)", bgl.SqlBaglanti());
                komut.Parameters.AddWithValue("@p1", TxtAdİletisim.Text);
                komut.Parameters.AddWithValue("@p2", TxtKonuİletisim.Text);
                komut.Parameters.AddWithValue("@p3", TxtMailİletisim.Text);
                komut.Parameters.AddWithValue("@p4", TxtMesajİletisim.Text);
                komut.ExecuteNonQuery();
                bgl.SqlBaglanti().Close();
                Response.Write("Mesajınız Alınmıştır."); 
            }
        }
    }
}