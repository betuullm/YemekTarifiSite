using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace YemekTarifiSite
{
    public partial class MesajDetaj : System.Web.UI.Page
    {
        sqlBaglanti bgl = new sqlBaglanti();
        protected void Page_Load(object sender, EventArgs e)
        {
           


            if (!IsPostBack)
            {
             

                SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar where mesajId=@p1", bgl.SqlBaglanti());
                komut.Parameters.AddWithValue("@p1", Request.QueryString["mesajId"].ToString());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtId.Text = dr["mesajId"].ToString();
                    TxtAd.Text = dr["mesajGonderen"].ToString();
                    TxtMail.Text = dr["mesajBaslik"].ToString();
                    TxtBaslik.Text = dr["mesajMail"].ToString();
                    TxtIcerik.Text = dr["mesajİcerik"].ToString();
                    TxtTarih.Text = dr["mesajTarih"].ToString();
                   


                }
                bgl.SqlBaglanti().Close();
                komut.Dispose();
            }

        }

        protected void BtnGeriDon_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminMesajlar.aspx");
        }
    }
}