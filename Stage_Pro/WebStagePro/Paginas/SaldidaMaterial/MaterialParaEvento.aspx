<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="MaterialParaEvento.aspx.cs" Inherits="WebStagePro.Paginas.SaldidaMaterial.CargarSalidaMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
      <link rel="stylesheet" href="../../../plugins/fontawesome-free/css/all.min.css">
    <style>
        .redondo{
            border-radius:50%;
        }


    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container-fluid" style="height:auto; background-color:white; min-height:100vh">

         <div class="row" style="padding-top:30px">
            <h3 style="margin-left:10px">Material para evento</h3>

        </div>
       <hr />
         <div class="row" style="padding-top:30px">
             <div class="col-lg-4 col-10">
          <asp:TextBox ID="txtMaterial" runat="server" CssClass="form-control"></asp:TextBox>

             </div>
             <div class="col-lg-2 col-2">
                 <asp:Button ID="btnBuscar" runat="server" Text="Buscar" CssClass="btn btn-primary" />
             </div>
        </div>
       <hr />


          <div class="row"  style="padding-top:30px"">
          
            <div class="col-lg-6 col-sm-12">
                <asp:GridView ID="GVMaterial" runat="server" AutoGenerateColumns="false" DataKeyNames="Codigo" OnRowCommand="GVMaterial_RowCommand">
                    <Columns>
                        <asp:BoundField HeaderText="Codigo" />
                         <asp:BoundField HeaderText="Tipo" />
                        <asp:BoundField HeaderText="Modelo" />
                        <asp:BoundField HeaderText="Medida"  />
                        <asp:BoundField HeaderText="Formato" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:LinkButton ID="btnMas" runat="server" CssClass="btn btn-success"><i class="fas fa-plus"></i></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>

                </asp:GridView>
              
               
        </div>
              
              <div class="col-lg-6 col-sm-12">
                <div class="row" style="margin-left:5px;margin-right:5px">

                        <asp:Label ID="Label2" runat="server" Text="Codigo"></asp:Label>
                
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control" ></asp:TextBox>


                </div>
                  
                  
                  
                  <div class="row" style="margin-left:5px;margin-right:5px">

               <asp:Label ID="Label1" runat="server" Text="Cantidad"></asp:Label>
                
                <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" type="number"></asp:TextBox>
                  </div>
                  <div class="row" style="padding-top:30px ;margin-left:5px;margin-right:5px" >
                      <asp:Button ID="btnAgregar" runat="server" Text="Cargar"  CssClass="btn btn-primary"/>
                  </div>
            
               
        </div>






    </div>
         <div class="row">
                 <asp:GridView ID="GVMaterialEvento" runat="server" CssClass="">
                      <Columns>
                        <asp:BoundField HeaderText="Codigo" />
                         <asp:BoundField HeaderText="Tipo" />
                        <asp:BoundField HeaderText="Modelo" />
                        <asp:BoundField HeaderText="Medida"  />
                        <asp:BoundField HeaderText="Formato" />
                          <asp:BoundField HeaderText="Catidad" />
                          <asp:BoundField HeaderText="Precio" />
                        <asp:ButtonField ButtonType="Button" Text="Agregar" HeaderText="Agregar" CommandName="Agregar"  ControlStyle-CssClass="btn btn-success redondo" />
                    </Columns>

                 </asp:GridView>

             </div>



    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
