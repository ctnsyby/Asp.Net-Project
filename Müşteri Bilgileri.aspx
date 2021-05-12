<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Müşteri Bilgileri.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 54%;
        }
        .style2
        {
            width: 111px;
        }
        .style3
        {
            width: 389px;
        }
    </style>
</head>
<body style="height: 363px; width: 502px">
    <form id="form1" runat="server">
    <div style="height: 570px; width:846px;">
    <div style="height: 49px; width:501px; margin-top:5px;">
    
        &nbsp;&nbsp;
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:TreeView ID="TreeView3" runat="server" Width="150px" 
                        onselectednodechanged="TreeView3_SelectedNodeChanged">
                        <Nodes>
                            <asp:TreeNode Text="Müşteri Ekle" NavigateUrl="~/Default.aspx" Target="ifrr" Value="Müşteri Ekle"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td class="style3">
                    <asp:TreeView ID="TreeView4" runat="server" Width="152px" 
                        onselectednodechanged="TreeView4_SelectedNodeChanged">
                        <Nodes>
                            <asp:TreeNode Text="Müşteri Güncelle" Target="ifrr" NavigateUrl="~/Default9.aspx" Value="Müşteri Güncelle"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td>
                    <asp:TreeView ID="TreeView5" runat="server" Width="127px">
                        <Nodes>
                            <asp:TreeNode Text="Müşteri Sil" Target="ifrr" NavigateUrl="~/Default15.aspx" Value="Müşteri Sil"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
            </tr>
        </table>
    
    </div>
    <div style="height: 307px;  width:488px; float:top; margin-top:5px;"> 
    
     <iframe name="ifrr" style="height: 370px; width: 825px" id="I2"></iframe>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="musteri_no" DataSourceID="AccessDataSource1">
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
    </div>
    </div>
    </form>
</body>
</html>
