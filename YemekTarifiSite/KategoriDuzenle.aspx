<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriDuzenle.aspx.cs" Inherits="YemekTarifiSite.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style31 {
            width: 100%;
            height: 406px;
        }
        .auto-style34 {
            height: 68px;
        }
        .auto-style35 {
            height: 67px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style31">
        <tr>
            <td class="auto-style35"></td>
            <td class="auto-style35"></td>
        </tr>
        <tr>
            <td class="auto-style35">KATEGORİ ID:</td>
            <td class="auto-style35">
                <asp:TextBox ID="TxtId" runat="server" Enabled="False" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">KATEGORİ AD:</td>
            <td class="auto-style34">
                <asp:TextBox ID="TxtAd" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">KATEGORİ ADET:</td>
            <td class="auto-style34">
                <asp:TextBox ID="TxtAdet" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style34">KATEGORİ RESİM:</td>
            <td class="auto-style34">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style34"></td>
            <td class="auto-style34">
                <asp:Button ID="BtnGuncelle2" runat="server" CssClass="btn btn-warning" Height="50px" OnClick="BtnGuncelle2_Click" Text="Güncelle" Width="100px" />
            </td>
        </tr>
    </table>
</asp:Content>
