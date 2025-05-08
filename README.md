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







