<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Müşteri Sil.aspx.cs" Inherits="Default15" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 34%;
        }
        .style2
        {
            width: 176px;
        }
        .style3
        {
            width: 205px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="style1">
                <tr>
                    <td class="style2">
                        Müşteri Adı</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" Text="Ara" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
    </div>
    <asp:Panel ID="Panel2" runat="server">
        <table class="style1">
            <tr>
                <td class="style3">
                    Müşteri No :</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Müşteri Adı</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Müşteri Soyadı</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Müşteri Adres</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Müşteri Cep Tel:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Müşteri E-Posta</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style3">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="Sil" 
                        Width="105px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="musteri_no" 
        DataSourceID="AccessDataSource1" Width="429px">
        <Columns>
            <asp:BoundField DataField="musteri_no" HeaderText="musteri_no" ReadOnly="True" 
                SortExpression="musteri_no" />
            <asp:BoundField DataField="adi" HeaderText="adi" SortExpression="adi" />
            <asp:BoundField DataField="soyadi" HeaderText="soyadi" 
                SortExpression="soyadi" />
            <asp:BoundField DataField="adres" HeaderText="adres" SortExpression="adres" />
            <asp:BoundField DataField="cep" HeaderText="cep" SortExpression="cep" />
            <asp:BoundField DataField="e_posta" HeaderText="e_posta" 
                SortExpression="e_posta" />
            <asp:BoundField DataField="kayıt_tarih" HeaderText="kayıt_tarih" 
                SortExpression="kayıt_tarih" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/vt.mdb" 
        SelectCommand="SELECT * FROM [musteri]"></asp:AccessDataSource>
    </form>
</body>
</html>
