using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Default9 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string a1 = TextBox8.Text;
        string a2 = TextBox2.Text;
        string a3 = TextBox3.Text;
        string a4 = TextBox4.Text;
        string a5 = TextBox5.Text;
        string a6 = TextBox6.Text;
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();

        OleDbCommand guncelle = new OleDbCommand("update musteri set adi='" + a2 + "' ,soyadi='" + a3 + "',adres='" + a4 + "',cep='" + a5 + "',e_posta='" + a6 +"' where adi='"+TextBox1.Text+"'", baglant_adi);
        int durum = guncelle.ExecuteNonQuery();
        if (durum > 0) 
        {
            Label1.Text = "güncellendi"; 
        }

        else { Label1.Text = "güncellenemedi"; }
        baglant_adi.Close();
        baglant_adi.Dispose();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        string ara = TextBox1.Text;
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();


        OleDbCommand komut = new OleDbCommand("Select * from musteri where adi='" + ara+"'", baglant_adi);
        OleDbDataReader oku = komut.ExecuteReader();
        if (oku.Read())
        {
            Panel2.Visible = true;
            TextBox8.Text = oku["musteri_no"].ToString();
            TextBox2.Text = oku["adi"].ToString();
            TextBox3.Text = oku["soyadi"].ToString();
            TextBox4.Text = oku["adres"].ToString();
            TextBox5.Text = oku["cep"].ToString();
            TextBox6.Text = oku["e_posta"].ToString();
        

        }
        else
        {
            Label1.Text = "kayıt bulunamadı";
        }
       
        baglant_adi.Close();

    }
}