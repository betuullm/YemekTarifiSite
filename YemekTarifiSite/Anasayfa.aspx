<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="YemekTarifiSite.Anasayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            text-align: center;
            height: 27px;
            background-color: #CC99FF;
        }
        .auto-style20 {
            color: #FFFFFF;
            text-decoration: none;
        }
        .auto-style21 {
            text-align: center;
            height: 327px;
        }
        .auto-style23 {
            text-align: center;
            height: 60px;
            background-color: #FFCCCC;
        }
        .auto-style28 {
            height: 173px;
        }
        .auto-style29 {
            height: 129px;
        }
        .auto-style30 {
            height: 21px;
            text-align: left;
            width: 286px;
        }
        .auto-style32 {
            height: 21px;
            text-align: right;
        }
        .auto-style33 {
            width: 100%;
            height: 767px;
           
            font-size: x-large;
            color: #FFFFFF;
        text-decoration: none;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="742px">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style23" colspan="2">
                        
                       <a href="YemekDetay.aspx?YemekId=<%#Eval("YemekId")%>"><em>
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style33" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </em></a> 

                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29" colspan="2">
                        <strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style28" colspan="2"><strong>Yapılışı: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style30"><strong>
                        <br />
                        Kategori:
                        <asp:Label ID="Label8" runat="server" Text='<%# Eval("KategoriId") %>'></asp:Label>
                         </strong>
                    </td>
                    <td class="auto-style32"><strong>&nbsp;<br />&nbsp;Puan:</strong><asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        <strong>&nbsp;Tarih:</strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style21" colspan="2">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("YemekResim") %>' />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
</asp:Content>
