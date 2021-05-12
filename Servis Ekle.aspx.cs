using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Default8 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
 OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();


        OleDbCommand komut = new OleDbCommand("insert into servis(servis_no,musteri_no,sikayeti,islem,kul_malzeme,t_notu,servis_tarih,ücret,ödeme,bakiye) values('" +Convert.ToInt16(TextBox1.Text) + "','" +Convert.ToInt16(TextBox2.Text) + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" +Convert.ToDateTime(TextBox7.Text)+ "','" +Convert.ToInt16(TextBox8.Text) + "','" +Convert.ToInt16(TextBox9.Text) + "','" +Convert.ToInt16(TextBox10.Text)+ "')", baglant_adi); 
        komut.ExecuteNonQuery();


      baglant_adi.Close();
        }
    }
