<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="CargaMaterial.aspx.cs" Inherits="WebStagePro.Paginas.Material" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />

    <style>

        .imagenmas{
            border-radius:50%
        }

        .volver{
            padding-left:25px
        }
        @media (max-width: 990px){
            .volver{
                padding-left:12px
            }
        }

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row"  style="padding-top:30px" >
            <div class="col-lg-6 col-sm-12" >
                <asp:Label ID="Label1" runat="server" Text="Tipo"></asp:Label>
                <div class="row">

                <div class="col-10">
            <asp:DropDownList ID="selectTipo" runat="server" CssClass="form-select"></asp:DropDownList>

                </div>
                <div class="col-2">
                    <asp:ImageButton ID="btnMasTipo" runat="server" ImageUrl="../Imagenes/mas.jpg"  Height="30px"  CssClass="imagenmas" />
                </div>
                    
                </div>
                

            </div>
            <div class="col-lg-6 col-sm-12">
               <asp:Label ID="Label2" runat="server" Text="Modelo"></asp:Label>
                <div class="row">

                <div class="col-10">
            <asp:DropDownList ID="SelectModelo" runat="server" CssClass="form-select"></asp:DropDownList>

                </div>
                <div class="col-2">
                    <asp:ImageButton ID="btnMasModelo" runat="server" ImageUrl="../Imagenes/mas.jpg"  Height="30px"  CssClass="imagenmas" />
                </div>
                    
                </div>
        </div>



    </div>


        <div class="row"  style="padding-top:30px" >
            <div class="col-lg-6 col-sm-12" >
                <asp:Label ID="Label3" runat="server" Text="Formato"></asp:Label>
                <div class="row">

                <div class="col-10">
            <asp:DropDownList ID="selectFormato" runat="server" CssClass="form-select"></asp:DropDownList>

                </div>
                <div class="col-2">
                    <asp:ImageButton ID="btnMasFormato" runat="server" ImageUrl="../Imagenes/mas.jpg"  Height="30px"  CssClass="imagenmas" />
                </div>
                    
                </div>
                

            </div>
            <div class="col-lg-6 col-sm-12">
               <asp:Label ID="Label4" runat="server" Text="Medida"></asp:Label>
                <div class="row">

                <div class="col-10">
            <asp:DropDownList ID="selectMedida" runat="server" CssClass="form-select"></asp:DropDownList>

                </div>
                <div class="col-2">
                    <asp:ImageButton ID="btnMasMedida" runat="server" ImageUrl="../Imagenes/mas.jpg"  Height="30px"  CssClass="imagenmas" />
                </div>
                    
                </div>
        </div>

    <div class="row"  style="padding-top:30px" >
            <div class="col-lg-6 col-sm-12" >
                <asp:Label ID="Label5" runat="server" Text="Codigo"></asp:Label>
                <div class="row">

                <div class="col-10">
            
                    <asp:TextBox ID="txtCodigo" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-2">
                </div>
                    
                </div>
                

            </div>
            <div class="col-lg-6 col-sm-12 volver" >
               <asp:Label ID="Label6" runat="server" Text="Detalle"></asp:Label>
                <div class="row">

                <div class="col-10" >
            
                     <asp:TextBox ID="txtDetalle" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-2">
                </div>
                    
                </div>
        </div>



    </div>

         </div>
        </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
</asp:Content>
