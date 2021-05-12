<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Servis Bilgileri.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 111px;
        }
        .style3
        {
            width: 133px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 612px; width:853px; border-style:groove;">
    <div style="height: 49px; width:449px; margin-top:5px;">
    
        &nbsp;&nbsp;
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:TreeView ID="TreeView3" runat="server" Width="138px">
                        <Nodes>
                            <asp:TreeNode Text="Servis Ekle" Target="ifrrr" NavigateUrl="~/Default8.aspx" Value="Müşteri Ekle"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td class="style3">
                    <asp:TreeView ID="TreeView4" runat="server" Width="150px">
                        <Nodes>
                            <asp:TreeNode Text="Servis Güncelle" Target="ifrrr" NavigateUrl="~/Default12.aspx" Value="Müşteri Güncelle"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td>
                    <asp:TreeView ID="TreeView5" runat="server" Width="135px">
                        <Nodes>
                            <asp:TreeNode Text="Servis Sil" Target="ifrrr" NavigateUrl="~/Default14.aspx" Value="Müşteri Sil"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
            </tr>
        </table>
    
    </div>
    <div style="height: 208px; width:430px; float:top; margin-top:5px;">
    <iframe name="ifrrr" style="height: 376px; width: 826px" id="I1"></iframe>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="servis_no" DataSourceID="AccessDataSource1" Height="123px" 
            Width="16px">
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/vt.mdb" SelectCommand="SELECT * FROM [servis]">
        </asp:AccessDataSource>
     </div>
    </div>
    </form>
</body>
</html>
