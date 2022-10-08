<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Iletisim.aspx.cs" Inherits="YemekTarifiSite.Iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style19 {
        width: 752px;
        height: 189px;
    }
    .auto-style30 {
        height: 54px;
        width: 375px;
    }
    .auto-style31 {
        height: 121px;
    }
    .auto-style32 {
        text-align: center;
        font-size: x-large;
        height: 26px;
        color: #000066;
        margin-bottom: 2px;
    }
        .auto-style34 {
            height: 54px;
            width: 375px;
            text-align: left;
        }
        .auto-style35 {
            height: 53px;
            width: 375px;
            text-align: left;
        }
        .auto-style36 {
            width: 375px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style19">
    <tr>
        <td class="auto-style31" colspan="2">
            <div class="auto-style32">
                Bizimle iletişime geçin.</div>
        </td>
    </tr>
    <tr>
        <td class="auto-style36"></td>
        <td class="auto-style36"></td>
    </tr>
    <tr>
        <td class="auto-style35">Ad Soyad:</td>
        <td class="auto-style35">
            <asp:TextBox ID="TxtAdİletisim" runat="server" Height="25px" Width="300px" ></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style35">Mail Adres:</td>
        <td class="auto-style35">
            <asp:TextBox ID="TxtMailİletisim" runat="server" Height="25px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style34">Konu:</td>
        <td class="auto-style34">
            <asp:TextBox ID="TxtKonuİletisim" runat="server" Height="25px" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style34">Mesaj:</td>
        <td class="auto-style34">
            <asp:TextBox ID="TxtMesajİletisim" runat="server" Height="50px" TextMode="MultiLine" Width="300px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style30">&nbsp;</td>
        <td class="auto-style30">
            <asp:Button ID="Btnİletisim" runat="server" Text="Gönder" OnClick="Btnİletisim_Click" CssClass="btn btn-warning" />
        </td>
    </tr>
</table>
</asp:Content>
