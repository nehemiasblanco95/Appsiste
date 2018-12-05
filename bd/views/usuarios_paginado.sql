CREATE VIEW 'usuarios_paginado' AS 
SELECT u.idusuario, u.nombre, u.correo, u.estado, r.rol FROM usuarios u LEFT JOIN roles r ON u.idrol = r.idrol