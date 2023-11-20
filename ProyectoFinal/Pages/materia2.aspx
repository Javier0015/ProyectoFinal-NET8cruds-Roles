<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/MP.Master" AutoEventWireup="true" CodeBehind="materia2.aspx.cs" Inherits="ProyectoFinal.Pages.materia2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Ingles
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="bdy" runat="server">
            <br />


     <h1>ㅤ</h1>
        <div class="mx-auto" style="width: 400px; text-align:center;">
            <h2>Ingles</h2>
        </div>
     <h1>ㅤ</h1> 
        <h2>ㅤ</h2>
        <br />
        <div class="container">
            <div class="row">
                <div class="col align-self-end">
                    <asp:Button runat="server" ID="btncreate" CssClass="button is-dark" Text="Crear nuevo" OnClick="btncreate_Click"/>
                </div>
                <h5>ㅤ</h5>
            </div>
        </div>
        <br />
       <div class="container">
       <div class="row">
  <div class="col">
      <div class="table small bg-dark">
          <asp:GridView CssClass="table table-dark  table-hover" runat="server" ID="gvmateria1">
              <Columns>
                  <asp:TemplateField HeaderText="Opciones del administrador">
                      <ItemTemplate>
                          <asp:Button runat="server" CssClass="button is-dark" ID="btnread" Text="Ver" OnClick="btnread_Click" />
                          <asp:Button runat="server" CssClass="button is-dark" ID="btnupdate" Text="Actualizar" OnClick="btnupdate_Click" />
                          <asp:Button runat="server" CssClass="button is-dark" ID="btndelete" Text="Eliminar" OnClick="btndelete_Click" />
                      </ItemTemplate>
                  </asp:TemplateField>
              </Columns>
          </asp:GridView>
      </div>
  </div>

            </div>
    <div class="control">
    <a class="button is-dark" href="materias.aspx">Cancelar</a>
</div>

    </div>
       
</asp:Content>
