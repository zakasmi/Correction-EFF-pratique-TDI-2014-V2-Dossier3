<%@ Page Title="" Language="C#" MasterPageFile="~/Menu.Master" AutoEventWireup="true" CodeBehind="MAJCHeque.aspx.cs" Inherits="GestChequePharmacie_ASP.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 214px;
        }
        .auto-style3 {
            width: 270px;
        }
        .auto-style4 {
            width: 270px;
            text-align: center;
            height: 43px;
        }
        .auto-style5 {
            width: 214px;
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
        }
        .auto-style7 {
            width: 214px;
            height: 34px;
        }
        .auto-style8 {
            width: 270px;
            height: 34px;
            text-align: center;
        }
        .auto-style9 {
            height: 34px;
            text-align: left;
        }
        .auto-style10 {
            width: 214px;
            height: 26px;
        }
        .auto-style11 {
            width: 270px;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label7" runat="server" Text="Nom Utilisateur :  "></asp:Label>
                <asp:Label ID="Label8" runat="server" ForeColor="#000066" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">
                <asp:Label ID="Label1" runat="server" Text="Numero_Cheque"></asp:Label>
            </td>
            <td class="auto-style11">
                <asp:TextBox ID="TB_Numero_Cheque" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label2" runat="server" Text="Dtae_Emission"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TB_Dtae_Emission" runat="server" TextMode="Date" Height="22px" Width="128px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Montant"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TB_Montant" runat="server"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Text="Url_Cheque"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:TextBox ID="TB_Url_Cheque" runat="server"></asp:TextBox>
                <asp:FileUpload ID="FU_Url_Cheque" runat="server" OnLoad="FU_Url_Cheque_Load" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label5" runat="server" Text="Code_Motif"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_Code_Motif" runat="server" DataSourceID="SqlDataSource2" DataTextField="Libelle_Motif" DataValueField="Code_Motif" Height="16px" Width="105px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:GestProdPharmaConnectionString %>" SelectCommand="SELECT * FROM [MotifsRejet]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label6" runat="server" Text="CIN"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_CIN" runat="server" DataSourceID="SqlDataSource3" DataTextField="CIN" DataValueField="CIN" Height="19px" Width="103px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:GestProdPharmaConnectionString %>" SelectCommand="SELECT [CIN], [Nom] FROM [Client]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label9" runat="server" Text="Code_Banque"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_Code_Banque" runat="server" DataSourceID="SqlDataSource4" DataTextField="Libelle_Banque" DataValueField="Code_Banque" Height="20px" Width="103px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:GestProdPharmaConnectionString %>" SelectCommand="SELECT [Code_Banque], [Libelle_Banque] FROM [Banque]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label10" runat="server" Text="Numero_Magasin"></asp:Label>
            </td>
            <td class="auto-style3">
                <asp:DropDownList ID="DDL_Numero_Magasin" runat="server" DataSourceID="SqlDataSource5" DataTextField="Libelle_Magasin" DataValueField="Numero_Magasin" Height="17px" Width="99px">
                </asp:DropDownList>
            </td>
            <td>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:GestProdPharmaConnectionString %>" SelectCommand="SELECT [Numero_Magasin], [Libelle_Magasin] FROM [Magasin]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:GestProdPharmaConnectionString %>" DeleteCommand="DELETE FROM [Cheque] WHERE [Numero_Cheque] = @Numero_Cheque" InsertCommand="INSERT INTO [Cheque] ([Numero_Cheque], [Dtae_Emission], [Montant], [Url_Cheque], [Code_Motif], [CIN], [Code_Banque], [Numero_Magasin]) VALUES (@Numero_Cheque, @Dtae_Emission, @Montant, @Url_Cheque, @Code_Motif, @CIN, @Code_Banque, @Numero_Magasin)" SelectCommand="SELECT * FROM [Cheque]" UpdateCommand="UPDATE [Cheque] SET [Dtae_Emission] = @Dtae_Emission, [Montant] = @Montant, [Url_Cheque] = @Url_Cheque, [Code_Motif] = @Code_Motif, [CIN] = @CIN, [Code_Banque] = @Code_Banque, [Numero_Magasin] = @Numero_Magasin WHERE [Numero_Cheque] = @Numero_Cheque">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="TB_Numero_Cheque" Name="Numero_Cheque" PropertyName="Text" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:ControlParameter ControlID="TB_Numero_Cheque" Name="Numero_Cheque" PropertyName="Text" Type="Int32" />
                        <asp:ControlParameter ControlID="TB_Dtae_Emission" DbType="Date" DefaultValue="2000" Name="Dtae_Emission" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TB_Montant" Name="Montant" PropertyName="Text" Type="Double" />
                        <asp:ControlParameter ControlID="TB_Url_Cheque" Name="Url_Cheque" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DDL_Code_Motif" Name="Code_Motif" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDL_CIN" Name="CIN" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDL_Code_Banque" Name="Code_Banque" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDL_Numero_Magasin" Name="Numero_Magasin" PropertyName="SelectedValue" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:ControlParameter ControlID="TB_Dtae_Emission" DbType="Date" Name="Dtae_Emission" PropertyName="Text" />
                        <asp:ControlParameter ControlID="TB_Montant" Name="Montant" PropertyName="Text" Type="Double" />
                        <asp:ControlParameter ControlID="TB_Url_Cheque" Name="Url_Cheque" PropertyName="Text" Type="String" />
                        <asp:ControlParameter ControlID="DDL_Code_Motif" Name="Code_Motif" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDL_CIN" Name="CIN" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDL_Code_Banque" Name="Code_Banque" PropertyName="SelectedValue" Type="String" />
                        <asp:ControlParameter ControlID="DDL_Numero_Magasin" Name="Numero_Magasin" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="TB_Numero_Cheque" Name="Numero_Cheque" PropertyName="Text" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style4">
                <asp:Button ID="BTN_Ajouter" runat="server" OnClick="BTN_Ajouter_Click" Text="Ajouter" Width="105px" />
            </td>
            <td class="auto-style6">
                <asp:Button ID="BTN_Modifier" runat="server" OnClick="BTN_Modifier_Click" Text="Modifier" Width="105px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style8">
                <asp:Button ID="BTN_Supprimer" runat="server" OnClick="BTN_Supprimer_Click" Text="Supprimer" Width="105px" />
            </td>
            <td class="auto-style9">
                <asp:Button ID="BTN_Telecharger" runat="server" OnClick="BTN_Telecharger_Click" Text="Telecharger Cheque" Width="132px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="LBL_Info" runat="server" Font-Bold="True" ForeColor="#006600"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
            </td>
            <td>
                <asp:Button ID="BTN_Generer_XML" runat="server" OnClick="BTN_Generer_XML_Click" Text="Generer XML" Width="105px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
