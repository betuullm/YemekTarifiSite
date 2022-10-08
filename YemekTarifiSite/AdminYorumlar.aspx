<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="AdminYorumlar.aspx.cs" Inherits="YemekTarifiSite.AdminYorumlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style23 {
            width: 725px;
        }
        .auto-style24 {
            width: 210px;
        }
        .auto-style25 {
            width: 242px;
            background-color: #FFFFFF;
        }
        .auto-style27 {
        margin-top: 0px;
            margin-left: 0px;
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
        .auto-style33 {
            width: 725px;
            height: 86px;
            
            text-align: center;
            font-size: large;
            
        }
        .auto-style38 {
            width: 1285px;
            height: 128px;
            text-align: center;
            color: #000000;
            background-color: #FFFFFF;
        }
        .auto-style39 {
            width: 2511px;
            height: 128px;
            text-align: left;
            color: #000000;
             background-color: white;
             
           
        }
        .auto-style42 {
            font-size: xx-small;
        }
        .auto-style43 {
            font-size: small;
        }
        .auto-style44 {
            font-size: large;
        }
        .auto-style46 {
            font-size: medium;
        }
        .auto-style47 {
            width: 2514px;
            height: 128px;
            text-align: left;
            color: #000000;
            background-color: white;
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
                <td class="auto-style32">ONAYLANAN YORUM LİSTESİ</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <div class="text-center">
            <asp:DataList ID="DataList1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style27" ForeColor="Black" GridLines="Horizontal" Height="300px" Width="750px" >
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="auto-style33">
                        <tr>
                            <td></td>
                            <td class="auto-style47">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style46"></asp:Label>
                                <em><asp:Label ID="Label2" runat="server" CssClass="auto-style43" Text='<%# Eval("YorumMail") %>'></asp:Label>
                                <br />
                                </em>
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style44" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                                <asp:Label ID="Label4" runat="server" CssClass="auto-style42" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                            </td>
                            <td class="auto-style38"></td>
                            <td class="auto-style25">
                               <asp:Button ID="Sil" runat="server" CssClass="btn btn-danger" Text="Sil" Enabled="False" Height="50px" Width="100px" />
                            </td>
                            <td class="auto-style25">
                            <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>">  <asp:Button ID="BtnGüncelle1" runat="server" CssClass="btn btn-primary" Text="Güncelle" Enabled="false" Height="50px" Width="100px"/></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    </asp:Panel>
 
    <asp:Panel ID="Panel3" runat="server" Height="69px">
        <table class="auto-style30">
            <tr>
                <td class="auto-style28">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-success" Height="40px"  style="font-size: x-large" Text="+" Width="40px" OnClick="Button1_Click" />
                </td>
                <td class="auto-style29"><strong>
                    <asp:Button ID="Button2" runat="server" CssClass="btn btn-danger" Height="40px"  style="font-size: x-large; font-weight: bold" Text="-" Width="40px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style32">ONAY BEKLEYEN YORUM LİSTESİ</td>
            </tr>
        </table>
</asp:Panel>
    <asp:Panel ID="Panel4" runat="server">
        <div class="text-center">
            <asp:DataList ID="DataList2" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style27" ForeColor="Black" GridLines="Horizontal" Height="300px" Width="750px" >
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <ItemTemplate>
                    <table class="auto-style33">
                        <tr>
                            <td></td>
                            <td class="auto-style47">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("YorumAdSoyad") %>' CssClass="auto-style46"></asp:Label>
                                &nbsp;<em><asp:Label ID="Label5" runat="server" CssClass="auto-style43" Text='<%# Eval("YorumMail") %>'></asp:Label>
                                <br />
                                </em>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("Yorumİcerik") %>'></asp:Label>
                                <asp:Label ID="Label7" runat="server" CssClass="auto-style42" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                                <em>
                                <br />
                                </em>
                            </td>
                            <td class="auto-style38"></td>
                            <td class="auto-style25">
                               <asp:Button ID="Sil" runat="server" CssClass="btn btn-danger" Text="Sil" Enabled="False" Height="50px" Width="100px" />
                            </td>
                            <td class="auto-style25">
                              <a href="YorumDetay.aspx?YorumId=<%#Eval("YorumId") %>"><asp:Button ID="BtnGüncelle2" runat="server" CssClass="btn btn-primary" Text="Güncelle" Enabled="false" Height="50px" Width="100px"/> </a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
        </div>
    </asp:Panel>

 
 </asp:Content>
