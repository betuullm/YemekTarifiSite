<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="YemekTarifiSite.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style16 {
        text-align: center;
        height: 261px;
    }
    .auto-style18 {
        width: 96%;
        height: 1381px;
    }
        .auto-style19 {
            font-size: medium;
        }
        .auto-style20 {
            height: 158px;
            text-align: center;
        }
        .auto-style21 {
            height: 139px;
        }
        .auto-style22 {
            height: 274px;
        }
        .auto-style23 {
            height: 147px;
        }
        .auto-style24 {
            height: 158px;
            text-align: center;
            font-size: large;
        }
        .auto-style25 {
            font-size: x-large;
            text-align: center;
        }
        .auto-style26 {
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" CellPadding="4" ForeColor="#333333">
    <AlternatingItemStyle BackColor="White" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <ItemStyle BackColor="#EFF3FB" />
    <ItemTemplate>
        <table class="auto-style18">
            <tr>
                <td class="auto-style24">
                    <em>
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style25" Text='<%# Eval("YemekAd") %>'></asp:Label>
                    </em>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style21">
                    <strong>Malzemeler:</strong>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style22">
                    <span class="auto-style26"><strong>Tarif: </strong>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </span>
                    <br />
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">
                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("YemekResim") %>' />
                </td>
            </tr>
            <tr>
                <td class="auto-style23"><strong>Puan: </strong>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;<strong>Eklenme Tarihi:</strong>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                </td>
            </tr>
        </table>
    </ItemTemplate>
    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
</asp:DataList>
</asp:Content>
