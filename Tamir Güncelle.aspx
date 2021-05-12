<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tamir Güncelle.aspx.cs" Inherits="Default11" %>

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
        .style5
        {
            width: 142px;
            height: 23px;
        }
        .style6
        {
            height: 23px;
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
                        Cihaz Türü:</td>
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
                    Tamir No:</td>
                <td>
                    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
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
                    Cihaz Türü</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Marka</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Model</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Şikayet</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Teknisyen Notu</td>
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
                    Geliş Tarih</td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
                    Teslim Tarih</td>
                <td class="style6">
                    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
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
        <br />
        <br />
    </asp:Panel>
    <asp:GridView ID="GridView2" runat="server" AllowSorting="True" 
        AutoGenerateColumns="False" DataKeyNames="t_no" 
        DataSourceID="AccessDataSource1">
        <Columns>
            <asp:BoundField DataField="t_no" HeaderText="t_no" ReadOnly="True" 
                SortExpression="t_no" />
            <asp:BoundField DataField="m_no" HeaderText="m_no" SortExpression="m_no" />
            <asp:BoundField DataField="cihaz_türü" HeaderText="cihaz_türü" 
                SortExpression="cihaz_türü" />
            <asp:BoundField DataField="marka" HeaderText="marka" SortExpression="marka" />
            <asp:BoundField DataField="model" HeaderText="model" SortExpression="model" />
            <asp:BoundField DataField="sikayet" HeaderText="sikayet" 
                SortExpression="sikayet" />
            <asp:BoundField DataField="t_notu" HeaderText="t_notu" 
                SortExpression="t_notu" />
            <asp:BoundField DataField="ucret" HeaderText="ucret" SortExpression="ucret" />
            <asp:BoundField DataField="odeme" HeaderText="odeme" SortExpression="odeme" />
            <asp:BoundField DataField="bakiye" HeaderText="bakiye" 
                SortExpression="bakiye" />
            <asp:BoundField DataField="gelis_tarih" HeaderText="gelis_tarih" 
                SortExpression="gelis_tarih" />
            <asp:BoundField DataField="teslim_tarih" HeaderText="teslim_tarih" 
                SortExpression="teslim_tarih" />
            <asp:CheckBoxField DataField="cihaz_durum" HeaderText="cihaz_durum" 
                SortExpression="cihaz_durum" />
        </Columns>
    </asp:GridView>
    <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/vt.mdb" 
        SelectCommand="SELECT * FROM [tamir]"></asp:AccessDataSource>
    </form>
</body>
</html>
