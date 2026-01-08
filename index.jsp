<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Inscripción Premium</title>
    <link rel="stylesheet" href="estilos.css">
</head>
<body>
    <div class="container">
        <h2>🚀 Registro de Estudiantes</h2>
        <form action="RegistroServlet" method="POST">
            <input type="text" name="nombre" placeholder="👤 Nombre completo" required>
            <input type="email" name="correo" placeholder="📧 Correo electrónico" required>

            <select name="curso" required>
                <option value="" disabled selected>Selecciona una materia...</option>
                <option value="Matemáticas">📐 Matemáticas</option>
                <option value="Lengua y Literatura">📚 Lengua y Literatura</option>
                <option value="Ciencias Naturales">🔬 Ciencias Naturales</option>
                <option value="Ciencias Sociales">🌍 Ciencias Sociales</option>
            </select>

            <div class="button-group">
                <input type="submit" name="accion" value="Guardar" class="btn-save">
                <input type="submit" name="accion" value="Mostrar registros" class="btn-show" formnovalidate>
            </div>
        </form>
    </div>
</body>
</html>