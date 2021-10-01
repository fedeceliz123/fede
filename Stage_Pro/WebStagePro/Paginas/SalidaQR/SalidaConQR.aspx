<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="SalidaConQR.aspx.cs" Inherits="WebStagePro.Paginas.SalidaQR.SalidaConQR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/ScanerQR/html5-qrcode.min.js"></script>
    <script src="../../Scripts/ScanerQR/jquery.min.js"></script>
    <script src="../../Scripts/ScanerQR/instascan.min.js"></script>

   

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">

        <div class="row">
  <div class="col">
    <div style="width:300px;" id="reader"></div>
  </div>
  
</div>
    <div id="result" style="display:none">Result Here</div>

<asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server" OnTextChanged="txtCodigo_TextChanged" AutoPostBack="true"></asp:TextBox>
        <asp:Label ID="Label1" runat="server" Text="-" ></asp:Label>

       <%-- <div class="row justify-content-center mt-3">
            <div class="col-10 col-lg-4">
                <div class="card-header bg-transparent mb-0">
                    <h5 class="text-center"><span class=" font-weight-bold text-primary">Scaner</span></h5>
                </div>
                <div class="card-body">
                    <div id="reader" style="width:300px; height:250px">

                    </div>



                    <div class="form-group">

                        <asp:TextBox ID="txtCodigo" CssClass="form-control" runat="server"></asp:TextBox>

                    </div>

                </div>
            </div>
        </div>--%>

    
    

    </div>
   <%--  <script type="text/javascript">

         let scanner = new Instascan.scanner({ video: document.getElementById('preview') });
         scanner.addListener('scan', function (content) {
             alert(content);
         });

         Instascan.Camera.getCameras().then(function (cameras) {
             if (cameras.length > 0) {
                 scanner.start(cameras[0]);
             }
             else {
                 console.error('No funciona la camara');
             }
         }).catch(function (e) {

             console.error(e);
         })


     </script>--%>

    <script type="text/javascript">
        function onScanSuccess(qrCodeMessage) {
            document.getElementById('result').innerHTML = '<span class="result">' + qrCodeMessage + '</span>';

           

                    
                    $('#<%=txtCodigo.ClientID%>').val(qrCodeMessage);
            
            <%=hola()%>
        }
        function onScanError(errorMessage) {
         

        }

        try {
            var html5QrcodeScanner = new Html5QrcodeScanner(
                "reader", { fps: 10, qrbox: 250, muted: false });
            html5QrcodeScanner.render(onScanSuccess, onScanError);

        } catch (e) {
            document.getElementById('result').innerHTML = '<span class="result">' + e + '</span>';

            /*alert(e);*/
        }

      

    </script>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">
   
    <script type="text/javascript">
      
    </script>

</asp:Content>
