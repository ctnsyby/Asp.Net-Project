<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Tamir Bilgileri.aspx.cs" Inherits="Default6" %>

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
    <div style="height: 532px; width:865px; border-style:groove;">
    <div style="height: 49px; width:449px; margin-top:5px;">
    
        &nbsp;&nbsp;
        <table class="style1">
            <tr>
                <td class="style2">
                    <asp:TreeView ID="TreeView3" runat="server" Width="138px">
                        <Nodes>
                            <asp:TreeNode Text="Tamir Ekle" target="ifr2" NavigateUrl="~/Default7.aspx" Value="Müşteri Ekle"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td class="style3">
                    <asp:TreeView ID="TreeView4" runat="server" Width="150px">
                        <Nodes>
                            <asp:TreeNode Text="Tamir Güncelle" Target="ifr2" NavigateUrl="~/Default11.aspx" Value="Müşteri Güncelle"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
                <td>
                    <asp:TreeView ID="TreeView5" runat="server" Width="135px">
                        <Nodes>
                            <asp:TreeNode Text="Tamir Sil" Target="ifr2" NavigateUrl="~/Default13.aspx"  Value="Müşteri Sil"></asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                </td>
            </tr>
        </table>
    
    </div>
    <div style="height: 208px; width:430px; float:top; margin-top:5px;"> 
    <iframe name="ifr2" style="height: 281px; width: 835px" id="I1"></iframe>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="t_no" DataSourceID="AccessDataSource1">
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
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/vt.mdb" SelectCommand="SELECT * FROM [tamir]">
        </asp:AccessDataSource>
    </div>
    </div>
    </form>
</body>
</html>
