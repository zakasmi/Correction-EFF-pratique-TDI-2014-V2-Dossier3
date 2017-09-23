<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="GestChequePharmacie_ASP.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        width: 100%;
    }
    .auto-style2 {
        width: 431px;
    }
    .auto-style3 {
        width: 179px;
    }
        .auto-style4 {
            width: 179px;
            height: 37px;
        }
        .auto-style5 {
            width: 431px;
            height: 37px;
        }
        .auto-style6 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Text="CIN Client"></asp:Label>
        </td>
        <td class="auto-style2">
            <asp:TextBox ID="TB_CIN" runat="server"></asp:TextBox>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style4">
            <asp:Label ID="Label2" runat="server" Text="Montant Total"></asp:Label>
        </td>
        <td class="auto-style5">
            <asp:Label ID="Label3" runat="server">0</asp:Label>
        </td>
        <td class="auto-style6"></td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Afficher" Width="100px" />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style3">&nbsp;</td>
        <td class="auto-style2">
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
