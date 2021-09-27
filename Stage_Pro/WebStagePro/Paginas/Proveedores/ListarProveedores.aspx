<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="ListarProveedores.aspx.cs" Inherits="WebStagePro.Paginas.Proveedores.ListarProveedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

   <link href="../../Content/bootstrap.css" rel="stylesheet" />
  
    
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="../../Content/bootstrap-datepicker.min.css" rel="stylesheet" />
    
 
    <script src="../../Scripts/bootstrap.js"></script>
    <script src="../../Scripts/bootstrap-datepicker.js"></script>--%>
   


    <script type="text/javascript">
        
            $("#<%=txtFechaingreso%>").datetimepicker({
                  format: 'yyyy-mm-dd',

         })
    

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    

    <div class="container-fluid">

        
        <div class="row" style="padding-top:30px">

            <div class="col-lg-5 col-8">
                <asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
              <div class="col-lg-2 col-1">
                  <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary"  />
              </div>

        </div>
            <div class="row" style="margin-top:10px;margin-left:10px">
                <asp:CheckBox ID="chActivo" runat="server"  Text="-Listar Inactivos"  AutoPostBack="false" CssClass="col-form-label-md text-bold"  />
            </div>
        <hr />
        <div class="row">
            <div class="col-lg-3  col-8">
            <h3>Lista de proveedores</h3>

            </div>
            <div class="col-lg-2 col-2">
                <asp:Button ID="Button1" runat="server" Text="Cargar Nuevo" CssClass="btn btn-success" />
            </div>
        </div>
        <hr />


        <asp:GridView ID="GVProveedores" runat="server" AutoGenerateColumns="False" CssClass="table table-hover table-dark" DataKeyNames="Cuit" OnRowCommand="GVProveedores_RowCommand">
            <Columns>
                <asp:BoundField HeaderText="Cuit" DataField="Cuit" />
                <asp:BoundField HeaderText="Razon Social" DataField="Razon Social"/>
                <asp:BoundField HeaderText="Nombre Fantasia" DataField="Nombre Fantasia"/>
                <asp:BoundField HeaderText="Rubro" DataField="Rubro"/>
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
                 <asp:Label ID="Label1" runat="server" Text="Cuit"></asp:Label>
                 <asp:TextBox ID="txtCuit" runat="server" CssClass="form-control"></asp:TextBox>                                         
                               
                                
                 <asp:Label ID="Label3" runat="server" Text="Razon social"></asp:Label>
                 <asp:TextBox ID="txtRazonS" runat="server" CssClass="form-control"></asp:TextBox>
                 
                  <asp:Label ID="Label6" runat="server" Text="Nombre fantasia"></asp:Label>
                 <asp:TextBox ID="txtNombreF" runat="server" CssClass="form-control" ></asp:TextBox>
                 
                 <asp:Label ID="Label7" runat="server" Text="Tipo iva"></asp:Label>
                 <asp:DropDownList ID="selectIva" runat="server" CssClass="form-select">
                     <asp:ListItem Value="Monotributo A">
                         Monotributo A
                     </asp:ListItem>
                      <asp:ListItem Value="Monotributo B">
                         Monotributo B
                     </asp:ListItem>
                      <asp:ListItem Value="Monotributo C">
                         Monotributo C
                     </asp:ListItem>
                      <asp:ListItem Value="Monotributo D">
                         Monotributo D
                     </asp:ListItem>
                      <asp:ListItem Value="Monotributo E">
                         Monotributo E
                     </asp:ListItem>
                      <asp:ListItem Value="Monotributo F">
                         Monotributo F
                     </asp:ListItem>
                      <asp:ListItem Value="Monotributo G">
                         Monotributo G
                     </asp:ListItem>
                      <asp:ListItem Value="Monotributo H">
                         Monotributo H
                     </asp:ListItem>
                 </asp:DropDownList>
                 

                 <asp:Label ID="Label4" runat="server" Text="Rubro"></asp:Label>
                 <asp:TextBox ID="txtRubro" runat="server" CssClass="form-control"  ></asp:TextBox>

                 <asp:Label ID="Label5" runat="server" Text="Fecha de ingreso"></asp:Label>
                
                   <div   class="input-group mb-3" >
            
                 <asp:TextBox ID="txtFechaingreso" runat="server" CssClass="form-control form_date"  ></asp:TextBox>
              <span class="input-group-text" id="basic-addon1"><i class="fas fa-calendar-alt"></i></span>
            
  </div> 
                 
             </div>
             <div class="modal-footer">
                 <asp:Button ID="btnReactivar" runat="server" Text="Reactivar" CssClass="btn btn-success"  />
                 <asp:Button ID="btnEditar" runat="server" Text="Editar" CssClass="btn btn-success"  />
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
                 <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" CssClass="btn btn-danger"  />
                 <button class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
             </div>
         </div>
     </div>
 </div>


  
 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
    
   

</asp:Content>
