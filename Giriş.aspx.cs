using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;

    }
    protected void Button2_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        OleDbConnection baglant_adi = new OleDbConnection(); 
        baglant_adi.ConnectionString =("Provider=microsoft.jet.oledb.4.0;Data Source=" + Server.MapPath("vt.mdb"));

        baglant_adi.Open();

        OleDbCommand komut = new OleDbCommand("select kul_adi,sifre from k_s", baglant_adi);

        OleDbDataReader oku = komut.ExecuteReader(); 
        while (oku.Read())
        {
            if (TextBox1.Text == oku[0].ToString() && TextBox2.Text == oku[1].ToString())
            { Response.Redirect("Ana sayfa.aspx"); }
            else
            {
                Label1.Visible = true;
                Label1.Text = "Yanlış Giriş Yaptınız...";
                TextBox1.Text = "";
                TextBox2.Text = "";
            }
        }




        
    }
}