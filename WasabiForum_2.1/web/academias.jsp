<%-- 
    Document   : academias
    Created on : May 7, 2017, 10:46:32 PM
    Author     : merlyn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="controllers.Academia, java.util.*" %>

<!DOCTYPE html>
<html>
   <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Wasabi Forum - Gestion de Area Basica </title>
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ" crossorigin="anonymous">

       <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
       <link rel="stylesheet" type="text/css" href="css/estilosGestion.css">
   </head>
   <body class="bodyAcademias">
   
     <!--Cuerpo del foro-->
       <div class="col-md-12" style="padding-left:4em;padding-right:4em;">
         <h3 class="card">
           <div class="card-title">
             Academias <a href="registrarAcademia.jsp" class="editarProfLink">  Registrar Academias </a></h3>
           </div>
       </div>

       <div class="row" style="padding-left:4em; padding-right:4em;">
           <%
               Academia academia = new Academia();
               ArrayList<Academia> academias = academia.getAcademias();
               
               if (academias.size() > 0) {
               %>
           
           <div class="col-md-8">
           <div class="alert alert-success" role="alert">
             <strong>Academias</strong> <a href="#" class="alert-link"> (<%=academias.size()%>)</a>
           </div id="anuncioAcademias">

           <p class="card-text"> Hay <%=academias.size()%> academias registradas </p>
         </div>
           
           
           <%        
               }else{
            %>
           
           <div class="col-md-8">
           <div class="alert alert-danger" role="alert">
             <strong>Sin Academias</strong> <a href="#" class="alert-link"> (0)</a>
           </div id="anuncioAcademias">

           <p class="card-text"> No hay academias registradas </p>
         </div>
           
           
           
           <%   
                }
           %>
           
           
         


         <div class="col-md-4 academ">
           <strong>Seleccione una academia para administrar su informacion o unidades de aprendizaje</strong>
           
           <%
               
               
               for(int i = 0; i < academias.size(); i ++){
                   Academia ggg = academias.get(i);
           %>
           <div class="card academ-item">
             <div class="card-block">
               <blockquote class="card-blockquote academ" id="textocuadritoinstruccion">
                   <%= ggg.getNombre() %>
               </blockquote>
             </div>
           </div>
           <%
           }
           %>
           
         </div>
     </div>
           
         

     <!--Fin del cuerpo del foro-->

       <!-- jQuery first, then Tether, then Bootstrap JS. -->
       <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
       <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
       <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>

   </body>
</html>
