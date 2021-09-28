<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="CargarSalidaMaterial.aspx.cs" Inherits="WebStagePro.Paginas.SaldidaMaterial.CargarSalidaMaterial" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

            <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container" style="height:auto; background-color:white; min-height:100vh">

         <div class="row" style="padding-top:30px">
            <h3 style="margin-left:10px">Salida de material</h3>

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




    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
