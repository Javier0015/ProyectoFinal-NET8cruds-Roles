<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MP.Master" AutoEventWireup="true" CodeBehind="CRUD1.aspx.cs" Inherits="ProyectoFinal.Pages.CRUD1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Ciencias y tecnologia
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bdy" runat="server">
     <h5>ㅤ</h5>
    <br />
    <div class="mx-auto" style="width: 400px; color: white; text-align:center;">
        <asp:Label runat="server" CssClass="h2" ID="lbltitulo" ></asp:Label>

    </div>

    <div runat="server" class="h-150 d-flex  align-items-center justify-content-center">
    
        <div>
            <div class="mb-3">
        <label class="form-label">Nombre Alumno</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="tbnombre">
        </asp:TextBox>
    </div>

    <div class="mb-3">
        <label class="form-label">Horas por semana</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="tbhps">
        </asp:TextBox>
     </div>

     <div class="mb-3">
        <label class="form-label">Calificación final</label>
        <asp:TextBox runat="server" CssClass="form-control" ID="tbcfinal">
        </asp:TextBox>
     </div>

                <asp:Button runat="server" CssClass="button is-dark" ID="btncreate" Text="Crear" Visible="false" OnClick="btncreate_Click" />
                <asp:Button runat="server" CssClass="button is-dark" ID="btnupdate" Text="Actualizar" Visible="false" OnClick="btnupdate_Click"/>
                <asp:Button runat="server" CssClass="button is-dark" ID="btndelete" Text="Eliminar" Visible="false" OnClick="btndelete_Click"/>
                <asp:Button runat="server" CssClass="button is-dark" ID="btnvolver" Text="Cancelar" Visible="true" OnClick="btnvolver_Click"/>

    </div>
        </div>
        
</asp:Content>
