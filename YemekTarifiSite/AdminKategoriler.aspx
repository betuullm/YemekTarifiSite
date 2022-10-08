<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminKategoriler.aspx.cs" Inherits="YemekTarifiSite.AdminKategoriler" %>
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
        .auto-style27 {
        margin-top: 0px;
            margin-left: 0px;
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
            color: #FFFFFF;
            text-align: center;
            font-size: large;
            background-color: #FFCCCC;
        }
        .auto-style34 {
            height: 52px;
        }
        .auto-style35 {
            height: 53px;
        }
        .auto-style36 {
            height: 25px;
        }
        .auto-style37 {
            width: 1490px;
            height: 128px;
            text-align: center;
            color: #000000;
            background-color: #FFCCCC;
        }
        .auto-style38 {
            width: 1285px;
            height: 128px;
            text-align: center;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style39 {
            width: 100%;
            height: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="69px">
        <table class="auto-style30">
            <tr>
                <td class="auto-style28">
                    <asp:Button ID="Button3" runat="server" CssClass="btn btn-success" Height="40px" OnClick="Button3_Click" style="font-size: x-large" Text="+" Width="40px" />
                </td>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-danger" Height="40px" OnClick="Button4_Click" style="font-size: x-large; font-weight: bold" Text="-" Width="40px" />
                    </strong></td>
                <td class="auto-style32">KATEGORİ LİSTESİ</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="text-center">
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style27" ForeColor="Black" GridLines="Horizontal" Height="300px" Width="750px" >
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="auto-style33">
                        <tr>
                            <td class="auto-style37">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>
                            </td>
                            <td class="auto-style38">&nbsp;</td>
                            <td class="auto-style25">
                               <a href='AdminKategoriler.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil'> <asp:Button ID="Sil" runat="server" CssClass="btn btn-danger" Text="Sil" Enabled="False" Height="50px" Width="100px" /></a> 
                            </td>
                            <td class="auto-style25">
                              <a href='KategoriDuzenle.aspx?KategoriId=<%#Eval("KategoriId")%>'><asp:Button ID="Güncelle" runat="server" CssClass="btn btn-primary" Text="Güncelle" Enabled="false" Height="50px" Width="100px"/></a>  
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    </asp:Panel>
&nbsp;&nbsp;&nbsp; 
    <asp:Panel ID="Panel3" runat="server" Height="69px">
        <table class="auto-style30">
            <tr>
                <td class="auto-style28">
                    <asp:Button ID="Button5" runat="server" CssClass="btn btn-success" Height="40px" style="font-size: x-large" Text="+" Width="40px" OnClick="Button5_Click" />
                </td>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button6" runat="server" CssClass="btn btn-danger" Height="40px" style="font-size: x-large; font-weight: bold" Text="-" Width="40px" OnClick="Button6_Click" />
                    </strong></td>
                <td class="auto-style32">KATEGORİ EKLE</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style39">
            <tr>
                <td class="auto-style34">KATEGORİ AD:</td>
                <td class="auto-style34">
                    <asp:TextBox ID="TxtKategoriAd" runat="server" Height="30px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style35">KATEGORİ İKON:</td>
                <td class="auto-style35">
                    <asp:TextBox ID="TxtKategoriİkon" runat="server" Height="30px" Width="300px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button7" runat="server" CssClass="btn btn-success" OnClick="Button7_Click" Text="Ekle" Height="50px" Width="100px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>
