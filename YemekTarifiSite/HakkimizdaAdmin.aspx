<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="HakkimizdaAdmin.aspx.cs" Inherits="YemekTarifiSite.HakkimizdaAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 725px;
        }
        .auto-style24 {
            width: 210px;
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
                <td class="auto-style32">HAKKIMIZDA</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <table class="w-100">
            <tr>
                <td>
                    <asp:TextBox ID="TxtHakkimizda" runat="server" Height="376px" TextMode="MultiLine" Width="745px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="text-center">
                    <asp:Button ID="BtnGuncelle" runat="server" CssClass="btn btn-warning" Height="50px" OnClick="BtnGuncelle_Click" Text="Güncelle" Width="300px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
    </asp:Content>