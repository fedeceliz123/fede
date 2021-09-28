<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebStagePro.Paginas.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../../Content/Styles/Login.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
   
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback"/>

    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous" />

<!-- font awesome  -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous" />

 

    <title></title>
</head>  
<body>
    <form id="form1" runat="server" class="fondo">
              <div class="formulario" style=" display:flex; flex-direction:column;align-items:center;justify-content:center"">
                  
                  <div class="row">
                      <asp:Image ID="Image1" runat="server" Height="80px" />

                  </div>
                  <div class ="row" >
                       <div class="col-12">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-user"></i></span>
              </div>
                <asp:TextBox ID="username" runat="server" type="text" value="" class="input form-control"  placeholder="Usuario" aria-label="Username" aria-describedby="basic-addon1" Width="350px"></asp:TextBox>
        
            </div>
          </div>
                  </div>
                  
                   <div class ="row" style="margin-top:30px">
                        <div class="col-12">
            <div class="input-group mb-3">
              <div class="input-group-prepend">
                <span class="input-group-text" id="basic-addon1"><i class="fas fa-lock"></i></span>
              </div>
                <asp:TextBox ID="password" runat="server" name="password" type="password" value="" class="input form-control"  placeholder="Contraseña" required="true" aria-label="password" aria-describedby="basic-addon1" Width="310px" ></asp:TextBox>
              <div class="input-group-append">
                <span class="input-group-text" onclick="password_show_hide();">
                  <i class="fas fa-eye" id="show_eye"></i>
                  <i class="fas fa-eye-slash d-none" id="hide_eye"></i>
                </span>
              </div>
            </div>
          </div>
                  </div>
                  
                  <div class ="row" style="margin-top:30px">
                      <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Black"><b>Recuperar contraseña</b></asp:LinkButton>
                  </div>

                  <div class ="row" style="margin-top:30px">
                      <div col="col-10">
                      <asp:Button ID="Button1" runat="server" Text="Ingresar" CssClass="btn btn-primary" />

                      </div>


                  </div>

                  </div>


            
    </form>

       <script>

           function password_show_hide() {
               var x = document.getElementById("password");
               var show_eye = document.getElementById("show_eye");
               var hide_eye = document.getElementById("hide_eye");
               hide_eye.classList.remove("d-none");
               if (x.type === "password") {
                   x.type = "text";
                   show_eye.style.display = "none";
                   hide_eye.style.display = "block";
               } else {
                   x.type = "password";
                   show_eye.style.display = "block";
                   hide_eye.style.display = "none";
               }
           }



       </script>

</body>
</html>
