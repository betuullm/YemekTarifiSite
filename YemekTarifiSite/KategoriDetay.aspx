<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="KategoriDetay.aspx.cs" Inherits="YemekTarifiSite.KategoriDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style19"><a href="YemekDetay.aspx?YemekId=<%#Eval("YemekId")%>">
                        <asp:Label ID="Label2" runat="server" Text='<%# Eval("YemekAd") %>' CssClass="auto-style20"></asp:Label>
                        </a>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Malzemeler:</strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Yapılışı: </strong>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                        <br />
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Puan:</strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td><strong>Tarih:</strong>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        <br />
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
