<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="YemekTarifiSite.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            width: 99%;
            height: 739px;
        }
        .auto-style21 {
            width: 256px;
            height: 92px;
        }
        .auto-style22 {
            height: 92px;
        }
        .auto-style28 {
            margin-left: 40px;
            height: 92px;
        }
        .auto-style29 {
            width: 256px;
            height: 93px;
        }
        .auto-style30 {
            margin-left: 40px;
            height: 93px;
        }
        .auto-style31 {
            height: 93px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
        <tr>
            <td class="auto-style21">&nbsp;</td>
            <td class="auto-style22">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">Tarifin Adı:</td>
            <td class="auto-style22">
                <asp:TextBox ID="TxtTarifAdi" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Malzemeleri:</td>
            <td class="auto-style28">
                <asp:TextBox ID="TextTarifMalzeme" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Yapılışı:</td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtTarifYapilisi" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">Fotoğraf:</td>
            <td class="auto-style28">
                <asp:FileUpload ID="FileUploadFotograf" runat="server" Width="300px" Height="25px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Tarif Sahibi Adı:</td>
            <td class="auto-style30">
                <asp:TextBox ID="TxtTarifSahibiAdi" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">Tarif Sahibi Maili:</td>
            <td class="auto-style30">
                <asp:TextBox ID="TxtTarifSahibiMaili" runat="server" TextMode="Email" Width="300px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31" colspan="2">
                <asp:Button ID="BtnTarifOner" runat="server" Text="Gönder" CssClass="initialism" OnClick="Button1_Click" Height="25px"/>
            </td>
        </tr>
    </table>
</asp:Content>
