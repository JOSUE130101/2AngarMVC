# 2AngarMVC
GestiondeRegistro

# Sistema de Registro de Aviones ✈️

Un sistema para gestionar el registro de aviones con arquitectura MVC.

## 📋 Requisitos
- PHP 7.4+
- MySQL/MariaDB
- Servidor web (Apache/Nginx)
- Composer (opcional para dependencias)

## 🚀 Instalación

1. **Clonar repositorio**:

git clone https://github.com/JOSUE130101/2AngarMVC.git
cd proyecto-aviones

**Clonar repositorio**

## Crear DB en MySQL:

CREATE DATABASE aviones;

## Configurar variables:
- avion_id
- avion_nombre
- avion_marca
- avion_placa
- avion_aerolinea
- cantidad

## 🗂 Estructura del Proyecto
 proyecto-aviones/
- ├── modelos/
- │   ├── Avion.php
- │   └── Conexion.php
- ├── vistas/
- │   ├── layouts/
- │   ├── aviones/
- │   │   ├── index.php
- │   │   └── crear.php
- ├── controladores/
- │   └── AvionController.php
- ├── diseño/
- │   ├── css/
- │   ├── js/
- │   └── img/
- └── public/
-    └── index.php


## 🔌 Configuración de Base de Datos
proyecto-aviones/
- ├── modelos/
- │   ├── Avion.php
- │   └── Conexion.php

# Conexión a Base de Datos en PHP con PDO

- Este documento explica el funcionamiento de la clase `BasedeDatos` que gestiona la conexión a MySQL utilizando PDO.

## 🛠 Clase `BasedeDatos`


- <?php
- class BasedeDatos {
-    const servidor = "localhost";
-    const usuariobd = "root";
-    const clave = "";
-    const nombrebd = "2proyectomvc";

-   public static function Conectar() {
-        try {
-            $conexion = new PDO(
-                "mysql:host=" . self::servidor . 
-                ";dbname=" . self::nombrebd . 
-                ";charset=utf8",
-                self::usuariobd,
-                self::clave
-           );
-            
-            $conexion->setAttribute(
-                 PDO::ATTR_ERRMODE, 
-                PDO::ERRMODE_EXCEPTION
-            );
-             
-             return $conexion;
            
        } catch(PDOException $e) {
            die("Error de conexión: " . $e->getMessage());
        }
    }
}
## Constantes de Configuración

- const servidor = "localhost";
- const usuariobd = "root";
- const clave = "";
- const nombrebd = "2proyectomvc";

 Primeros Pasos
Iniciar XAMPP (Apache y MySQL)

## Abrir en navegador:

- http://localhost/2AngarMVC/index.php
- El sistema mostrará:

- Dashboard principal

## Listado de aviones existentes

- Opciones de navegación

## 🔧 Solución de Problemas
- Error 404 - Página no encontrada
- Verificar que la URL sea exacta

- Asegurar que el archivo index.php exista en la ruta correcta

## Error de Conexión a MySQL
- Verificar en phpMyAdmin:

- Que exista la base de datos 2proyectomvc

- Que el usuario tenga permisos

- Revisar credenciales en Conexion.php

No se muestran los estilos
Verificar que la carpeta diseño/ contenga los archivos CSS/JS

Revisar rutas en las vistas

## 📝 Insertar Datos de Prueba
Ejecutar en phpMyAdmin:

- sql
- INSERT INTO aviones 
- (matricula, modelo, aerolinea, capacidad, fecha_fabricacion) 
- VALUES 
- ('N12345', 'Boeing 737-800', 'Aeroméxico', 160, '2018-05-15'),
- ('XA-ABC', 'Airbus A320neo', 'Volaris', 186, '2020-11-22');
## 🛑 Recomendaciones de Seguridad
- Cambiar credenciales de MySQL en producción

- No usar usuario root en entorno real

- Implementar sistema de autenticación

## 📌 Notas Adicionales
- El sistema usa el patrón MVC

- Las URLs siguen el formato:







