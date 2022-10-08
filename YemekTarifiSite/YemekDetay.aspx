<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="YemekTarifiSite.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            font-size: x-small;
        }
        .auto-style20 {
            font-size: small;
        }
        .auto-style21 {
            font-size: x-large;
        }
        .auto-style23 {
        width: 353px;
        height: 65px;
    }
    .auto-style24 {
        height: 65px;
    }
    .auto-style31 {
        width: 100%;
        height: 260px;
    }
        .auto-style32 {
            margin-top: 0px;
        }
        .auto-style33 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<br />
<br />
    <asp:Label ID="Label2" runat="server" CssClass="auto-style21" Text="Label"></asp:Label>
    <br />
<br />
    <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="757px" CssClass="auto-style32">
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                        &nbsp;<asp:Label ID="Label6" runat="server" CssClass="auto-style19" Text='<%# Eval("YorumMail") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Yorumİcerik") %>' CssClass="auto-style20"></asp:Label>
                        -<asp:Label ID="Label5" runat="server" CssClass="auto-style19" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
        <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
    </asp:DataList>
    <div>
        
        <br /> YORUM YAP <br />
<br />
    </div>
    <table class="auto-style31">
        <tr>
            <td class="auto-style23">Ad Soyad:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TxtAdSoyad" runat="server" Width="300px" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Mail:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TxtMail" runat="server" Height="25px" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">Yorum:</td>
            <td class="auto-style24">
                <asp:TextBox ID="TxtYorum" runat="server" Height="25px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24">
                <asp:Button ID="BtnYorum" runat="server" Text="Gönder" Height="25px" OnClick="BtnYorum_Click" />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>
