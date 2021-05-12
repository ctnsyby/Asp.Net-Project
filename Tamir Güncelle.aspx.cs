using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class Default11 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {

        string ara =TextBox1.Text;
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();


        OleDbCommand komut = new OleDbCommand("Select * from tamir where cihaz_türü='" + ara + "'", baglant_adi);
        OleDbDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Panel2.Visible = true;
            TextBox13.Text = oku["t_no"].ToString();
            TextBox2.Text = oku["m_no"].ToString();
            TextBox3.Text = oku["cihaz_türü"].ToString();
            TextBox4.Text = oku["marka"].ToString();
            TextBox5.Text = oku["model"].ToString();
            TextBox6.Text = oku["sikayet"].ToString();
            TextBox7.Text = oku["t_notu"].ToString();
            TextBox8.Text = oku["ucret"].ToString();
            TextBox9.Text = oku["odeme"].ToString();
            TextBox10.Text = oku["bakiye"].ToString();
            TextBox11.Text = oku["gelis_tarih"].ToString();
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
        string a2 = TextBox2.Text;
        string a3 = TextBox3.Text;
        string a4 = TextBox4.Text;
        string a5 = TextBox5.Text;
        string a6 = TextBox6.Text;
        string a7 = TextBox7.Text;
        string a8 = TextBox8.Text;
        string a9 = TextBox9.Text;
        string a10 = TextBox10.Text;
        string a11 = TextBox11.Text;
        string a12 = TextBox12.Text;
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();

        OleDbCommand guncelle = new OleDbCommand("update tamir set t_no='" + a1 + "' ,m_no='" + a2 + "',cihaz_türü='" + a3 + "',marka='" + a4 + "',model='" + a5 + "',sikayet='" + a6 + "' ,t_notu='" + a7 + "',ucret='" + a8 + "',odeme='" + a9 + "',bakiye='" + a10 + "',gelis_tarih='" + a11 + "' ,teslim_tarih='" + a12 + "' where cihaz_türü='" + TextBox1.Text + "'", baglant_adi);
        int durum = guncelle.ExecuteNonQuery();
        if (durum > 0)
        {
            Label1.Text = "güncellendi";
        }

        else { Label1.Text = "güncellenemedi"; }
        baglant_adi.Close();
        baglant_adi.Dispose();
    }
}