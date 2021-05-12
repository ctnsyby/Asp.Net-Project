<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Giriş.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Kullanıcı Girişi</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
    $(function () {
        $("#cerceve").hide().fadeIn(500);
        $(".show").hide();
        $(".close").click(function () {
            $("#cerceve").hide(500);
            $(".show").fadeIn(500);
        });
        $(".show").click(function () {
            $("#cerceve").fadeIn(500);
            $(".show").hide(500);
        });
    });
</script>
    <style type="text/css">
        .style1
        {
            width: 171px;
        }
        .style2
        {
            height: 55px;
        }
        .style3
        {
            width: 157px;
            height: 55px;
        }
        .style4
        {
            width: 39px;
            height: 55px;
        }
        .style5
        {
            width: 157px;
        }
        .auto-style1 {
            width: 70px;
            height: 55px;
        }
    </style>
</head>
<body style="width: 779px; height: 155px;">
    <form id="form1" runat="server">
    <div style="height: 552px">
        

            <table class="style1"  frame="border" 
                
                
                style="border: thin inset #000066; background-position: center center; font-size: medium; background-color: #66CCFF; height: 241px; font-style: inherit; list-style-type: decimal-leading-zero; display: inline-table; z-index: auto; top: 277px; right: 10px; bottom: 235px; left: 471px; position: fixed; width: 285px; margin-right: 0px;" 
                border="0">
                <tr>
                    <td class="style8" align="left" 
                        
                        style="font-family: Verdana; font-size: small; font-weight: bold; font-style: normal">
                        Kullanıcı Adı:</td>
                    <td class="style5" align="center">
                        <asp:TextBox ID="TextBox1" runat="server" Width="155px" BackColor="White" 
                            BorderColor="#666699" BorderStyle="Groove" Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8" align="left" 
                        
                        style="font-family: Verdana; font-size: small; font-weight: bold; font-style: normal">
                        Şifre:</td>
                    <td class="style5" align="center">
                        <asp:TextBox ID="TextBox2" runat="server" type="password" Width="155px" 
                            BorderStyle="Groove" BackColor="White" BorderColor="#666699" 
                            Height="25px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style8">
                        &nbsp;</td>
                    <td class="style5" align="center">
                        <asp:Button ID="Button1" runat="server" Text="GİRİŞ YAP" 
                            onclick="Button1_Click" Width="155px" BackColor="#FF9999" 
                            BorderColor="#666699" BorderStyle="Groove" Height="25px" />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        </td>
                    <td class="style3" align="center">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        

            <table class="style1"  frame="border" 
                
                
                style="border: thin inset #000066; background-position: center center; font-size: medium; background-color: #66CCFF; height: 17px; font-style: inherit; list-style-type: decimal-leading-zero; display: inline-table; z-index: auto; top: 217px; right: 10px; bottom: 477px; left: 471px; position: fixed; width: 285px;" 
                border="0">
                <tr>
                    <td class="auto-style1" align="left" bgcolor="#009999">
                        TEKNİK_SERVİS_TAKİP_SİSTEMİ_GİRİŞİ</td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
