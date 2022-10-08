<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekGuncelleAdmin.aspx.cs" Inherits="YemekTarifiSite.YemekGuncelleAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style31 {
            width: 752px;
            height: 406px;
        }
        .auto-style46 {
            height: 88px;
            width: 376px;
        }
        .auto-style47 {
            height: 88px;
            text-align: center;
        }
        .auto-style48 {
            height: 88px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style31">
        <tr>
            <td class="auto-style46"></td>
            <td class="auto-style46">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style46">YEMEK ID:</td>
            <td class="auto-style46">
                <asp:TextBox ID="TxtId" runat="server" Enabled="False" Height="30px" Width="300px" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">YEMEK AD:</td>
            <td class="auto-style46">
                <asp:TextBox ID="TxtAd" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">YEMEK MALZEME:</td>
            <td class="auto-style46">
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="50px" Width="300px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">YEMEK YAPILIŞI:</td>
            <td class="auto-style46">
                <asp:TextBox ID="TxtTarif" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style46">KATEGORİ:&nbsp;</td>
            <td class="auto-style46">
                <asp:DropDownList ID="ddlkategori" runat="server" Height="30px"  Width="300px" DataSourceID="SqlDataSource1" DataTextField="KategoriAd" DataValueField="KategoriId">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Dbo_yemektarifiConnectionString %>" SelectCommand="Select * from Tbl_Kategoriler
"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>FOTOĞRAF:</td>
            <td class="auto-style48">
                <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style47" colspan="2">
                <asp:Button ID="BtnGnnYmg" runat="server" Height="50px" Text="Günün Yemeği  Seç" Width="300px" CssClass="btn btn-success" OnClick="BtnGnnYmg_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style47" colspan="2">
                <asp:Button ID="BtnGuncelle2" runat="server" CssClass="btn btn-warning" Height="50px" Text="Güncelle" Width="300px" OnClick="BtnGuncelle2_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>
