<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MP.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ProyectoFinal.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Inicio
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bdy" runat="server">
    <br />
    <asp:Button runat="server" CssClass="button is-primary" ID="btncreate" Visible="false" Text="Crear"/>
    <asp:GridView class="table center mx-auto" runat="server" ID="datos">
        <Columns>
            <asp:TemplateField HeaderText="Opciones">
                <ItemTemplate>
                    <asp:Button runat="server" CssClass="button is-primary" ID="btnread" Text="Ver"/>
                    <asp:Button runat="server" CssClass="button is-warning" ID="btnupdate" Text="Actualizar"/>
                    <asp:Button runat="server" CssClass="button is-danger" ID="btndelete" Text="Eliminar"/>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
