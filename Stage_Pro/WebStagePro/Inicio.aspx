<%@ Page Title="" Language="C#" MasterPageFile="~/Maestra.Master" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="WebStagePro.Inicio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="lib/main.css" rel="stylesheet" />
    <script src="lib/main.js"></script>
        <link href='fullcalendar/main.css' rel='stylesheet' />
    <script src='fullcalendar/main.js'></script>
    <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
        var calendar = new FullCalendar.Calendar(calendarEl, {
            initialView: 'dayGridMonth',
            selectable: true
          
        });
          calendar.render();
          
      });

        dateClick: function(info) {
            alert('Date: ' + info.dateStr);
            alert('Resource ID: ' + info.resource.id);
        }
      
      
      
    </script>
 

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" style="width:70%" >

    <div id="calendar" ></div>
    </div>


</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="script" runat="server">



 

</asp:Content>