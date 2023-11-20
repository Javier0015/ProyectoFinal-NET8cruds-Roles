<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MP.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="ProyectoFinal.Pages.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Registro
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3"  ContentPlaceHolderID="bdy" runat="server">
    <h1>ㅤ</h1>
    <div class="is-preload">
    <br />
    <div class="container box bg-dark">
        <h1 class="title text-light">
            Registro de usuarios
        </h1>
        <div class="field">
            <label class="label text-light">
                Nombre
            </label>
            <div class="control">
                <asp:TextBox runat="server" ID="nombre" CssClass="input text-light" type="text" placeholder="Escriba su nombre"></asp:TextBox>
            </div>
        </div>
                <div class="field">
            <label class="label text-light">
                Edad
            </label>
            <div class="control">
                <asp:TextBox runat="server" ID="edad" CssClass="input text-light" type="text" placeholder="Escriba su edad"></asp:TextBox>
            </div>
        </div>

                <div class="field">
            <label class="label text-light">
                Correo
            </label>
            <div class="control">
                <asp:TextBox runat="server" ID="correo" CssClass="input text-light" type="text" placeholder="Escriba su correo"></asp:TextBox>
            </div>
        </div>

                <div class="field">
            <label class="label text-light">
                Contraseña
            </label>
            <div class="control">
                <asp:TextBox runat="server" ID="contraseña" CssClass="input text-light" type="password" placeholder="Escriba su contraseña"></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="field is-grouped">
            
            <div class="control">
                <asp:Button runat="server" ID="Registrar" CssClass="button is-dark" OnClick="Registrar_Click" Text="Enviar" />
            </div>
            
            <div class="control">
               <a class="button is-dark" href="inicio.aspx">Cancelar</a>
            </div>
        </div>

    </div>
        </div>
    <h1>ㅤ</h1>
</asp:Content>
