<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AutoForm.aspx.cs" Inherits="PrimeraWeb.AutoForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtId" class="form-label">Id</label>
                <asp:TextBox runat="server" ID="txtId" CssClass="form-control" />

            </div>
            <div class="mb-3">
                <label for="exampleFormControlInput1" class="form-label">Modelo</label>
                <asp:TextBox runat="server" ID="txtModelo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción</label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtColor" class="form-label">Color</label>
                <asp:DropDownList ID="ddlColore" CssClass="form-select" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtFecha" class="form-label">Fecha</label>
                <asp:TextBox runat="server" TextMode="Date" ID="txtFecha" CssClass="form-control" />
            </div>
            <div class="form-check">
                <asp:CheckBox ID="cboxUsado" runat="server" />
                <asp:Label ID="lblUsado" Text="Usado" CssClass="form-check-label" runat="server" />

            </div>
            <div class="mb-3">
                <asp:RadioButton ID="rdbImportado" AutoPostBack="true" OnCheckedChanged="rdbImportado_CheckedChanged" Text="Importado" Checked="true" runat="server" GroupName="Importado"/>
                <asp:RadioButton ID="rdbNacional" AutoPostBack="true" OnCheckedChanged="rdbImportado_CheckedChanged" Text="Nacional" runat="server" GroupName="Importado"/>
            </div>
            <div class="mb-3">
                <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" CssClass="btn btn-primary" OnClick="btnAceptar_Click" />
                <a href="Default.aspx">Cancelar</a>
            </div>
        </div>
    </div>
</asp:Content>

