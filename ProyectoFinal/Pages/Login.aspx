<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MP.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProyectoFinal.Pages.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Iniciando
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bdy" runat="server">
<h1>ㅤ</h1>

    <div class="container box bg-dark ">
        <h1 class="title text-light">Iniciar sesión</h1>

        <div class="field">
            <label class="label text-light">Correo</label>
            <div class="control">
                <asp:Textbox CssClass="text-light" runat="server" id="correo" class="input" type="text" placeholder="Escriba su correo"></asp:Textbox>
            </div>
        </div>

                <div class="field">
            <label class="label text-light">Contraseña</label>
            <div class="control">
                <asp:Textbox CssClass="text-light" runat="server" id="contraseña" class="input" type="password" placeholder="Escriba su contraseña"></asp:Textbox>
            </div>
        </div>
        <br />
        <div class="field is-grouped">
            <div class="control">
            <asp:Button runat="server" id="ingresar" class="button is-dark" text="Ingresar" OnClick="ingresar_Click" />
             </div>
                <div class="control">
                <a class="button is-dark" href="inicio.aspx">Cancelar</a>
            </div>
        </div>
     </div>
    <h1>ㅤ</h1>


</asp:Content>
