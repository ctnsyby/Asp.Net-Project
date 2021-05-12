using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Default14 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string ara = TextBox1.Text;
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();


        OleDbCommand komut = new OleDbCommand("Select * from servis where sikayeti='" + ara + "'", baglant_adi);
        OleDbDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Panel2.Visible = true;
            TextBox11.Text = oku["servis_no"].ToString();
            TextBox2.Text = oku["musteri_no"].ToString();
            TextBox3.Text = oku["sikayeti"].ToString();
            TextBox4.Text = oku["islem"].ToString();
            TextBox5.Text = oku["kul_malzeme"].ToString();
            TextBox6.Text = oku["t_notu"].ToString();
            TextBox7.Text = oku["servis_tarih"].ToString();
            TextBox8.Text = oku["ücret"].ToString();
            TextBox9.Text = oku["ödeme"].ToString();
            TextBox10.Text = oku["bakiye"].ToString();


        }
        else
        {
            Label1.Text = "kayıt bulunamadı";
        }

        baglant_adi.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();

        OleDbCommand sil = new OleDbCommand("delete from servis where sikayeti='" + TextBox1.Text + "'", baglant_adi);
        int durum = sil.ExecuteNonQuery();
        if (durum > 0)
        {
            Label1.Text = "Kayıt Silindi";
        }

        else { Label1.Text = "Kayıt Silinemedi"; }
        baglant_adi.Close();
        baglant_adi.Dispose();

    }
}