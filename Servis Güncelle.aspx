<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Servis Güncelle.aspx.cs" Inherits="Default12" %>

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
            width: 142px;
            height: 26px;
        }
        .style4
        {
            height: 26px;
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
                        Şikayet Ara:</td>
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
                <td class="style2">
                    Servis No:</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Müşteri No :</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Şikayeti</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    İşlem</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Kullanılan Malzeme</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Teknisyen Notu</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Servis Tarih</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Ücret</td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Ödeme</td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Bakiye</td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button2" runat="server" onclick="Button1_Click" Text="Güncelle" 
                        Width="127px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    <br />
    <br />
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="servis_no" 
        DataSourceID="AccessDataSource1">
        <Columns>
            <asp:BoundField DataField="servis_no" HeaderText="servis_no" ReadOnly="True" 
                SortExpression="servis_no" />
            <asp:BoundField DataField="musteri_no" HeaderText="musteri_no" 
                SortExpression="musteri_no" />
            <asp:BoundField DataField="sikayeti" HeaderText="sikayeti" 
                SortExpression="sikayeti" />
            <asp:BoundField DataField="islem" HeaderText="islem" SortExpression="islem" />
            <asp:BoundField DataField="kul_malzeme" HeaderText="kul_malzeme" 
                SortExpression="kul_malzeme" />
            <asp:BoundField DataField="t_notu" HeaderText="t_notu" 
                SortExpression="t_notu" />
            <asp:BoundField DataField="servis_tarih" HeaderText="servis_tarih" 
                SortExpression="servis_tarih" />
            <asp:BoundField DataField="ücret" HeaderText="ücret" SortExpression="ücret" />
            <asp:BoundField DataField="ödeme" HeaderText="ödeme" SortExpression="ödeme" />
            <asp:BoundField DataField="bakiye" HeaderText="bakiye" 
                SortExpression="bakiye" />
            <asp:CheckBoxField DataField="servis_durum" HeaderText="servis_durum" 
                SortExpression="servis_durum" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/vt.mdb" 
        SelectCommand="SELECT * FROM [servis]"></asp:AccessDataSource>
    </form>
</body>
</html>
