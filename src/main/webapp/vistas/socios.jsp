<%-- 
    Document   : socios
    Created on : 16 ene 2023, 11:57:14
    Author     : Ezequiel
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Socios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    </head>
    <body>
        <h1>Listado de Socios del Gym</h1>
        
        <div class="container">
            <div class="row">
                <a class="btn btn-primary col-4 m-4">Agregar Socio</a>
                
                <table class="table table primary">
                    <thead>
                    <th> id </th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Direccion</th>
                    <th>Localidad</th>
                    <th>fecha de Nac.</th>
                    <th>Telefono</th>
                    <th>mail</th>
                    <th>modificar</th>
                    <th>eliminar</th>    
                    </thead>
                    
                    <%                        
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                    for (int x=0;x<resultado.size();x++)
                    {
                        String ruta="SociosController?accion=modificar&id="+resultado.get(x).getIdSocio();
                        String rutaE="SociosController?accion=eliminar&id="+resultado.get(x).getIdSocio();


                    
                    %>
                    
                    <tr>
                      <td><%=resultado.get(x).getIdSocio() %></td>  
                      <td>%=resultado.get(x).getNombre() %></td>
                      <td>%=resultado.get(x).getApellido() %></td>
                      <td>%=resultado.get(x).getDireccion() %></td>  
                      <td>%=resultado.get(x).getLocalidad() %></td>
                      <td>%=resultado.get(x).getFnac() %></td>
                      <td>%=resultado.get(x).getTelefono() %></td>  
                      <td>%=resultado.get(x).getMail() %></td>  
                      <td><a href=<%=ruta%> >X</a></td>
                      <td><a href=<%=rutaE%> >X</a></td>
                    
                    </tr>
                    
                    <% 
                        } 
                   %>
                   
                </table>
                
            </div>
            
            
            
        </div>
        
        
    </body>
</html>