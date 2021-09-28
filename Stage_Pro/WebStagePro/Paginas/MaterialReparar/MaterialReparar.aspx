<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="MaterialReparar.aspx.cs" Inherits="WebStagePro.Paginas.MaterialReparar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

        <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="height:auto; background-color:white; min-height:100vh">
         <div class="row" style="padding-top:30px">
            <h3 style="margin-left:10px">Material a reparar</h3>

        </div>
       <hr />

            <div class="row"  style="padding-top:30px" >
          
            <div class="col-lg-6 col-sm-12">
               <asp:Label ID="Label2" runat="server" Text="Codigo"></asp:Label>
                
                <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control"></asp:TextBox>
              
               
        </div>
              <div class="col-lg-6 col-sm-12">
               <asp:Label ID="Label1" runat="server" Text="Cantidad"></asp:Label>
                
                <asp:TextBox ID="txtCantidad" runat="server" CssClass="form-control" type="number"></asp:TextBox>
             
               
        </div>
    </div>


        <div class="row"  style="padding-top:30px" >
          
            <div class="col-lg-6 col-sm-12">
               <asp:Label ID="Label3" runat="server" Text="Fecha ingreso"></asp:Label>
                
                <asp:TextBox ID="txtFechaI" runat="server" CssClass="form-control" type="date"></asp:TextBox>
              
               
        </div>
              <div class="col-lg-6 col-sm-12">
               <asp:Label ID="Label4" runat="server" Text="Detalle"></asp:Label>
                
                <asp:TextBox ID="txtDetalle" runat="server" CssClass="form-control" Height="150px"  type="text" TextMode="MultiLine" Rows="10" ></asp:TextBox>
             
               
        </div>
    </div>
         <!--botones-->

       <div class="row" style="padding-top:30px;padding-bottom:30px" >
                <div class="col-2 col-md-2 col-lg-1">
                  <asp:Button ID="btnCargar" runat="server" Text="Cargar" CssClass="btn btn-primary"  />

                </div>
                <div class="col-2 col-md-2 col-lg-1">
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-secondary"  />

                </div>
            </div>

    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
