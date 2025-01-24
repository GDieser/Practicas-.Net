<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PrimeraWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <% if (user != "")
        { %>
    <h2>Ingresaste!</h2>
    <asp:Label Text="text" ID="lblUser" runat="server" />

    <%}
        else
        { %>

    <h2>Debes loguearte</h2>
    <a href="Ejemplo-ASPX">Login</a>
    <%} %>

    <%--<main>
        <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">Bienvenido a POCHOSO.NET</h1>
            <asp:Label Text="text" ID="lblUser" runat="server" />

            <p class="lead">POCHO.NET es un pagina de indole peculiar que busca recopilar la mayor cantidad de información de nuestro señor.</p>
            <p><a href="https://www.linkedin.com/in/gerardo-joaquin-oviedo-235a5a258/" class="btn btn-primary btn-md">Leer más &raquo;</a></p>
        </section>

        <%--<img width="200px" src="https://i.pinimg.com/1200x/42/d4/a8/42d4a8775095f483be9fdfdc9f3a095e.jpg" alt="Alternate Text" />
        <img width="400px" src="https://scontent.fepa11-1.fna.fbcdn.net/v/t1.6435-9/55646543_1107979889403566_7328101658888503296_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=127cfc&_nc_eui2=AeEbuBjB6gWF9tpFS1-81pC4JGswM2nk8mwkazAzaeTybFVdzrooNfV-4d996sG0zbw0cj0TBXhk8zZxNmaYJLNI&_nc_ohc=2I2IbMfV_cEQ7kNvgEBPFvY&_nc_oc=AdgC8SIowynei21OPwiZGd8FwMebYQ1Xu5U5g5iR9QdIdAOCMIo39m0ZQB-zugUk6GU&_nc_zt=23&_nc_ht=scontent.fepa11-1.fna&_nc_gid=A1QMAw1rEm0e1F71iAoc3NT&oh=00_AYCkHPrOWUvB_ZiO6l2WiMoL3ILapClPJtl-DcduuRvdnA&oe=6799678B" />
        <img width="400px" src="https://scontent.fepa11-1.fna.fbcdn.net/v/t39.30808-6/465037507_10224738753328392_4232958143534919301_n.jpg?_nc_cat=100&ccb=1-7&_nc_sid=833d8c&_nc_eui2=AeEidI3NTjAGuWJXSEwULRV5_Y1oiPtS4x79jWiI-1LjHp_kBb-2Ny2XSZ7TCaGpyjRSolH2qUhRwqxg9ZhN0IbR&_nc_ohc=44LWrzi9DTgQ7kNvgHURTH4&_nc_oc=AdidZY5QcefihMm23xtfBh3kcHJ8N3aRrdJD1ZOEUgPanyXXlETlf-dPxF93EnW_Ao8&_nc_zt=23&_nc_ht=scontent.fepa11-1.fna&_nc_gid=AiEfRYdc1tuleMu017Y6L4u&oh=00_AYASY8J9pNGgcMiWtanXmN6fZDlLjfVfYtE_hYc_oYjjXQ&oe=6777B9FC" />
         <img width="400px" src="https://scontent.fepa11-1.fna.fbcdn.net/v/t39.30808-6/465718015_10226281447678111_8023470140750485097_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGmyzpzYssuK58zRxwEQ_tRjoURqVuSf5uOhRGpW5J_mz0AQTzNFlkMGjl3LsO-nohkwNDvplfpUEeJQeD1mwZU&_nc_ohc=AnVVv0v2l8EQ7kNvgFwyoc5&_nc_oc=Adiz0Ke6AFhghmZVBnAo1_MCkjZ7zCsnJLnoULfpmdybDObBgXwGRqCzRaU9u36egu4&_nc_zt=23&_nc_ht=scontent.fepa11-1.fna&_nc_gid=A-dnWpJZt8QsLCMfwAJnXrP&oh=00_AYCpj_dQmXk13RSipwKjjZJ7TnOR-T5BKH83JZpgCnR8vg&oe=6777D573" />

        <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Inicios</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Historias y más</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Actualidad</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div>
    </main>--%>
    <asp:GridView runat="server" ID="dgvAutos" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
            <asp:BoundField HeaderText="Color" DataField="Color" />
            <asp:CheckBoxField HeaderText="Usado" DataField="Usado" />
            <asp:CheckBoxField HeaderText="Importado" DataField="Importado" />
        </Columns>
    </asp:GridView>

</asp:Content>
