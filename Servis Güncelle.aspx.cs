using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Default12 : System.Web.UI.Page
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
        string a1 = TextBox11.Text;
        string a2 = TextBox2.Text;
        string a3 = TextBox3.Text;
        string a4 = TextBox4.Text;
        string a5 = TextBox5.Text;
        string a6 = TextBox6.Text;
        string a7 = TextBox7.Text;
        string a8 = TextBox8.Text;
        string a9 = TextBox9.Text;
        string a10 = TextBox10.Text;
     
        OleDbConnection baglant_adi = new OleDbConnection();
        baglant_adi.ConnectionString = ("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();

        OleDbCommand guncelle = new OleDbCommand("update servis set servis_no='" + a1 + "' ,musteri_no='" + a2 + "',sikayeti='" + a3 + "',islem='" + a4 + "',kul_malzeme='" + a5 + "',t_notu='" + a6 + "' ,servis_tarih='" + a7 + "',ücret='" + a8 + "',ödeme='" + a9 + "',bakiye='" + a10 + "' where sikayeti='" + TextBox1.Text + "'", baglant_adi);
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