<%@page import="modelo.Estudiante"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Panel de Control - Estudiantes</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <div class="container" style="max-width: 800px;">
        <h2>📋 Estudiantes Inscritos</h2>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Curso</th>
                </tr>
            </thead>
            <tbody>
                <%
                    List<Estudiante> lista = (List<Estudiante>) request.getAttribute("lista");
                    if (lista != null && !lista.isEmpty()) {
                        for (Estudiante e : lista) {
                %>
                <tr>
                    <td><%= e.getNombre() %></td>
                    <td><strong><%= e.getCorreo() %></strong></td>
                    <td><%= e.getCurso() %></td>
                </tr>
                <% 
                        }
                    } else {
                %>
                <tr>
                    <td colspan="3" style="text-align:center;">No hay registros disponibles.</td>
                </tr>
                <% } %>
            </tbody>
        </table>
        <a href="index.jsp" class="link-back">← Volver al Formulario</a>
    </div>
</body>
</html>