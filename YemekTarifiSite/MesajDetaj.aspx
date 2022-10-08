<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajDetaj.aspx.cs" Inherits="YemekTarifiSite.MesajDetaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style31 {
            width: 100%;
            height: 834px;
        }
        .auto-style37 {
            height: 116px;
        }
        .auto-style40 {
            height: 115px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style31">
        <tr>
            <td class="auto-style40">MESAJ ID:</td>
            <td class="auto-style40">
                <asp:TextBox ID="TxtId" runat="server" CssClass="FORM-CONTROL" Enabled="False" EnableTheming="True" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style40">MESAJ GÖNDEREN:</td>
            <td class="auto-style40">
                <asp:TextBox ID="TxtAd" runat="server" CssClass="fom-control" Enabled="False" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style40">MESAJ MAİL:</td>
            <td class="auto-style40">
                <asp:TextBox ID="TxtMail" runat="server" CssClass="fom-control" Enabled="False" Height="30px" TextMode="Email" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">MESAJ BAŞLIK:</td>
            <td class="auto-style37">
                <asp:TextBox ID="TxtBaslik" runat="server" CssClass="fom-control" Enabled="False" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">MESAJ İÇERİK:</td>
            <td class="auto-style37">
                <asp:TextBox ID="TxtIcerik" runat="server" CssClass="fom-control" Enabled="False" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">MESAJ TARİH:</td>
            <td class="auto-style37">
                <asp:TextBox ID="TxtTarih" runat="server" CssClass="fom-control" Enabled="False" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">
                <asp:Button ID="BtnGeriDon" runat="server" CssClass="btn btn-warning" Height="50px" Text="GERİ" Width="300px" OnClick="BtnGeriDon_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
