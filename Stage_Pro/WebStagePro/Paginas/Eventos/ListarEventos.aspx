<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ListarEventos.aspx.cs" Inherits="WebStagePro.Paginas.Eventos.ListarEventos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <!-- Font Awesome -->
  <link rel="stylesheet" href="../../../plugins/fontawesome-free/css/all.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
          <div class="row" style="padding-top:30px">

            <div class="col-lg-5 col-8">
                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
              <div class="col-lg-2 col-1">
                  <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="btnBuscar_Click" />
              </div>

        </div>

        <hr />

         <div class="row">
            <div class="col-lg-3  col-8">
            <h3>Lista de eventos</h3>

            </div>
            <div class="col-lg-2 col-2">
                <asp:Button ID="Button1" runat="server" Text="Cargar Nuevo" CssClass="btn btn-success" OnClick="Button1_Click" />
            </div>
        </div>
        <hr />

         <asp:GridView ID="GVEventos" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-dark" OnRowCommand="GVMaterial_RowCommand" DataKeyNames="id" >
            <Columns>
                <asp:BoundField HeaderText="ID" DataField="id" Visible="false" />
                <asp:BoundField HeaderText="Lugar" DataField="Lugar"/>
                <asp:BoundField HeaderText="Fecha" DataField="Fecha" />
                <asp:BoundField HeaderText="Cliente" DataField="Cliente"/>

              <%--  <asp:ButtonField Text="Ver" CommandName="Ver" ControlStyle-CssClass="btn btn-success"  HeaderText="Ver">
<ControlStyle CssClass="btn btn-success"></ControlStyle>
                </asp:ButtonField>
                <asp:ButtonField Text="Editar" CommandName="Editar" ControlStyle-CssClass="btn btn-primary" HeaderText="Editar" >
<ControlStyle CssClass="btn btn-primary"></ControlStyle>
                </asp:ButtonField>
               <asp:ButtonField Text="Eliminar" CommandName="Eliminar" ControlStyle-CssClass="btn btn-danger" HeaderText="Eliminar">
<ControlStyle CssClass="btn btn-danger"></ControlStyle>
                </asp:ButtonField>--%>
               
               

                <asp:TemplateField HeaderText="Acciones">
                    <ItemTemplate>
                    <asp:LinkButton runat="server" CssClass="btn btn-success" CommandName="Ver"><i class="fas fa-search"></i></asp:LinkButton>
                    <asp:LinkButton runat="server" CssClass="btn btn-primary" CommandName="Editar"><i class="fas fa-edit"></i></asp:LinkButton>
                    <asp:LinkButton runat="server" CssClass="btn btn-danger" CommandName="Eliminar"><i class="fas fa-trash-alt"></i></asp:LinkButton>
                     <asp:LinkButton runat="server" CssClass="btn btn-secondary" CommandName="MasMaterial"><i class="fas fa-box"></i></asp:LinkButton>

                    </ItemTemplate>

                </asp:TemplateField>
          

            </Columns>


                


        </asp:GridView>




    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
