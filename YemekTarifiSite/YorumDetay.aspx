<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumDetay.aspx.cs" Inherits="YemekTarifiSite.YorumDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style25 {
            width: 752px;
            height: 369px;
        }
        .auto-style42 {
            height: 65px;
            width: 376px;
        }
        .auto-style43 {
            height: 66px;
            width: 376px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style25">
        <tr>
            <td class="auto-style42">&nbsp;</td>
            <td class="auto-style42">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">YORUM ID:</td>
            <td class="auto-style42">
                <asp:TextBox ID="TxtId" runat="server" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style43">YORUM AD SOYAD:</td>
            <td class="auto-style43">
                <asp:TextBox ID="TxtAd" runat="server" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style43">YORUM MAİL:</td>
            <td class="auto-style43">
                <asp:TextBox ID="TxtMail" runat="server" Height="30px" Width="300px" Enabled="False"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style43">YORUM İÇERİK:</td>
            <td class="auto-style43">
                <asp:TextBox ID="TxtIcerik" runat="server" Height="50px" Width="300px" Enabled="False" TextMode="MultiLine"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style43">YEMEK AD:</td>
            <td class="auto-style43">
                <asp:TextBox ID="TxtYemek" runat="server" Enabled="False" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style43">&nbsp;</td>
            <td class="auto-style43">
                <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Height="50px" Text="ONAYLA" Width="100px" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
