<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TarifDetay.aspx.cs" Inherits="YemekTarifiSite.TarifDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            height: 98px;
            margin-left: 80px;
        }
        .auto-style29 {
            height: 98px;
        }
        .auto-style36 {
            width: 100%;
            height: 710px;
        }
        .auto-style37 {
            height: 23px;
        }
        .auto-style42 {
            height: 97px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style36">
        <tr>
            <td class="auto-style37">&nbsp;</td>
            <td class="auto-style37">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style42">TARİF AD:</td>
            <td class="auto-style42">
                <asp:TextBox ID="TxtAd" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">TRİF MALZEMELER:</td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtMalzeme" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">TARİF YAPILIŞI:</td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtTarif" runat="server" Height="100px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">TARİF RESİM:</td>
            <td class="auto-style28">
                <asp:FileUpload ID="FUResim" runat="server" Height="30px" Width="300px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style29">TARİF ÖNEREN AD SOYAD:</td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtAdSoyad" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">TARİF ÖNEREN MAİL:</td>
            <td class="auto-style28">
                <asp:TextBox ID="TxtMail" runat="server" Height="30px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">KATEGORİ:</td>
            <td class="auto-style28">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="30px" Width="300px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">&nbsp;</td>
            <td class="auto-style28">
                <asp:Button ID="BtnKaydet" runat="server" CssClass="btn btn-primary" Height="50px" Text="ONAYLA" Width="300px" OnClick="BtnKaydet_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
