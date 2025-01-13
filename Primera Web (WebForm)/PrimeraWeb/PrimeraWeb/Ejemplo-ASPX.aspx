
<%@ Page Title="Ejemplo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ejemplo-ASPX.aspx.cs" Inherits="PrimeraWeb.Ejemplo_ASPX" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Hola.</h3>
        <input ID="txtApellido" type="type" name="name" runat="server" value="" />
        
        <asp:TextBox ID="txtNombre" runat="server" OnTextChanged="txtNombre_TextChanged"></asp:TextBox>

        <asp:Button ID="btnAceptar" runat="server" OnClick="Button1_Click" Height="26px" Text="Aceptar" Width="85px" />
        
        <asp:Label ID="lblSaludo" runat="server" Text=""></asp:Label>

        <div>
            <asp:Label ID="lblbSecundario" runat="server" Text=""></asp:Label>
        </div>

        <a href="Default?id=3">Descripcion</a>

    </main>
</asp:Content>
