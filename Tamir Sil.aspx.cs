using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Default13 : System.Web.UI.Page
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


        OleDbCommand komut = new OleDbCommand("Select * from tamir where cihaz_türü='" + ara + "'", baglant_adi);
        OleDbDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Panel2.Visible = true;
            TextBox13.Text = oku["t_no"].ToString();
            TextBox14.Text = oku["m_no"].ToString();
            TextBox15.Text = oku["cihaz_türü"].ToString();
            TextBox16.Text = oku["marka"].ToString();
            TextBox17.Text = oku["model"].ToString();
            TextBox18.Text = oku["sikayet"].ToString();
            TextBox19.Text = oku["t_notu"].ToString();
            TextBox20.Text = oku["ucret"].ToString();
            TextBox21.Text = oku["odeme"].ToString();
            TextBox22.Text = oku["bakiye"].ToString();
            TextBox23.Text = oku["gelis_tarih"].ToString();
            TextBox12.Text = oku["teslim_tarih"].ToString();

        }
        else
        {
            Label1.Text = "kayıt bulunamadı";
        }

        baglant_adi.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a1 = TextBox13.Text;
        string a2 = TextBox14.Text;
        string a3 = TextBox15.Text;
        string a4 = TextBox16.Text;
        string a5 = TextBox17.Text;
        string a6 = TextBox18.Text;
        string a7 = TextBox19.Text;
        string a8 = TextBox20.Text;
        string a9 = TextBox21.Text;
        string a10 = TextBox22.Text;
        string a11 = TextBox23.Text;
        string a12 = TextBox12.Text;
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();

        OleDbCommand sil = new OleDbCommand("delete from tamir where cihaz_türü='" + TextBox1.Text + "'", baglant_adi);
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