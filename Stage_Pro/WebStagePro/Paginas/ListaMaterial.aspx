<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ListaMaterial.aspx.cs" Inherits="WebStagePro.Paginas.ListaMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

   

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
            <h3>Lista de materiales</h3>

            </div>
            <div class="col-lg-2 col-2">
                <asp:Button ID="Button1" runat="server" Text="Cargar Nuevo" CssClass="btn btn-success" OnClick="Button1_Click" />
            </div>
        </div>
        <hr />
        <asp:GridView ID="GVMaterial" runat="server" AutoGenerateColumns="False" CssClass="table table-dark" OnRowCommand="GVMaterial_RowCommand" DataKeyNames="Codigo" >
            <Columns>
                <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                <asp:BoundField HeaderText="Tipo" DataField="Tipo"/>
                <asp:BoundField HeaderText="Modelo" DataField="Modelo" />
                <asp:BoundField HeaderText="Formato" DataField="Formato"/>
                <asp:BoundField HeaderText="Medida" DataField="Medida"/>
                <asp:BoundField HeaderText="Disponibilidad" DataField="Disponibilidad"/>
               <asp:ButtonField Text="Ver" CommandName="Ver" ControlStyle-CssClass="btn btn-success"  HeaderText="Ver"/>
                <asp:ButtonField Text="Editar" CommandName="Editar" ControlStyle-CssClass="btn btn-primary" HeaderText="Editar" />
               <asp:ButtonField Text="Eliminar" CommandName="Eliminar" ControlStyle-CssClass="btn btn-danger" HeaderText="Eliminar"/>

            </Columns>


                


        </asp:GridView>


    </div>
    <!--Modal editar -->
 <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <asp:Label ID="lblModal" runat="server"  CssClass="col-form-label-lg text-bold"></asp:Label>
             </div>
             <div class="modal-body">

             </div>
             <div class="modal-footer">
                 <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-success" OnClick="btnEditar_Click" />
                 <button class="btn btn-primary" data-dismiss="modal">Cancelar</button>
             </div>
         </div>
     </div>
 </div>

      <!--Modal Eliminar -->
 <div class="modal fade" id="modalEliminar" tabindex="-1" role="dialog">
     <div class="modal-dialog">
         <div class="modal-content">
             <div class="modal-header">
                 <asp:Label ID="lblEliminar" runat="server" Text="Esta seguro que desea eliminar"  CssClass="col-form-label-lg text-bold"></asp:Label>
             </div>
             <div class="modal-body">
                 <asp:Label ID="Label2" runat="server" Text="Motivo:" CssClass="form-label text-bold" ></asp:Label>
                 <asp:TextBox ID="txtMotivo" runat="server" CssClass="form-control"></asp:TextBox>
             </div>
             <div class="modal-footer">
                 <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger" OnClick="btnEliminar_Click" />
                 <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
             </div>
         </div>
     </div>
 </div>





</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">



</asp:Content>
