<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminMesajlar.aspx.cs" Inherits="YemekTarifiSite.Mesajlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 725px;
        }
        .auto-style24 {
            width: 210px;
        }
        .auto-style25 {
            width: 242px;
            background-color: #FFFFFF;
        }
        .auto-style28 {
            width: 74px;
            text-align: center;
            background-color: #CCCCFF;
        }
        .auto-style29 {
            width: 93px;
            text-align: left;
            background-color: #CCCCFF;
        }
        .auto-style30 {
            width: 752px;
            height: 67px;
            background-color: #FFCCCC;
        }
        .auto-style32 {
            width: 557px;
            background-color: #CCCCFF;
        }
        .auto-style33 {
            width: 725px;
            height: 86px;
            
            text-align: center;
            font-size: large;
            
        }
        .auto-style38 {
            height: 128px;
            text-align: center;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style46 {
            font-size: large;
        }
        .auto-style48 {
            width: 2788px;
            height: 128px;
            text-align: left;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style50 {
            font-size: medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="69px">
        <table class="auto-style30">
            <tr>
                <td class="auto-style28">
                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Height="40px" style="font-size: x-large" Text="+" Width="40px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" Height="40px"  style="font-size: x-large; font-weight: bold" Text="-" Width="40px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style32">MESAJ LİSTESİ</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="text-center">
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="form-control"  Height="300px" Width="750px" >
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="auto-style33">
                        <tr>
                            <td></td>
                            <td class="auto-style48">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>' CssClass="auto-style46"></asp:Label>
                                <em>
                                <br />
                                </em>
                                <asp:Label ID="Label2" runat="server" CssClass="auto-style50" Text='<%# Eval("mesajBaslik") %>'></asp:Label>
                                <em>
                                <br />
                                </em>
                            </td>
                            <td class="auto-style38"></td>
                            <td class="auto-style25">
                               <a href="MesajDetaj.aspx?mesajId=<%#Eval("mesajId") %>" ><asp:Button ID="BtnGörüntüle" runat="server" CssClass="btn btn-warning" Enabled="false" Height="50px" Text="Görüntüle" Width="100px" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    </asp:Panel>

 
 </asp:Content>
