# 2AngarMVC
# 🛩️ Sistema de Gestión de Aviones (2avionesMVC) 

---

## 📌 Descripción  
**AircraftDB** es un programa de gestión de registros de aviones conectado a una base de datos. Permite administrar de manera eficiente información sobre aeronaves, incluyendo su marca, modelo, color y aerolínea asociada. Ideal para aerolíneas, aeropuertos o entusiastas de la aviación.  

---

## ✨ Funcionalidades  
- **CRUD Completo:**  
  - ✅ **Crear** nuevos registros de aviones.  
  - 📝 **Editar** información existente (ej: cambio de aerolínea o modelo).  
  - 🗑️ **Eliminar** aviones desactualizados o fuera de servicio.  
  - 🔍 **Consultar** registros con filtros (por marca, aerolínea, etc.).  
- **Base de Datos Integrada:**  
  - Conexión a MySQL/PostgreSQL/SQLite (ajustable).  
  - Almacenamiento seguro y escalable.  
- **Interfaz Intuitiva:**  
  - Menús interactivos (CLI) o interfaz gráfica (según versión).  

---

## 🛠️ Tecnologías Utilizadas  
- **Lenguaje:** Python/Java/C# (según implementación).  
- **Base de Datos:** SQL (ej: MySQL, PostgreSQL).  
- **Control de Versiones:** Git.  

--- 
<a id='contents'></a>
## Contenido.
<ul>
<li><a href="#intro">Requisitos.</a></li>
<li><a href="#wrangling">Instalación.</a></li>
<li><a href="#eda">CrearDB:
</a></li>
<li><a href="#configuracion">configuracion</a></li>
<li><a href="#Estructura">Estructura</a></li>
<li><a href="#Conexion">Conexion</a></li>
<li><a href="#Clase">Clase</a></li>
<li><a href="#Constantes">Constantes</a></li>
<li><a href="#Instruciones">Instruciones</a></li>
<li><a href="#Soluciones">Soluciones</a></li>


</ul>
  
<a id='intro'></a>
# Sistema de Registro de Aviones ✈️

Un sistema para gestionar el registro de aviones con arquitectura MVC.

<a id='wrangling'></a>
## 📋 Requisitos
- PHP 7.4+
- MySQL/MariaDB
- Servidor web (Apache/Nginx)
- Composer (opcional para dependencias)

## 🚀 Instalación

1. **Clonar repositorio**:

Descargar el repositorio https://github.com/JOSUE130101/2AngarMVC/archive/refs/heads/main.zip
cd proyecto-aviones

<a id='eda'></a>
## CrearDB:

CREATE DATABASE aviones;

<a id='configuracion'></a>
## Configurar variables:
```
 avion_id
 avion_nombre
- avion_marca
- avion_placa
- avion_aerolinea
- cantidad
```
<a id='Estructura'></a>

## 🗂 Estructura del Proyecto

```
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

```


` Configuración de Base de Datos `
```

proyecto-aviones/
- ├── modelos/
- │   ├── Avion.php
- │   └── Conexion.php
```

<a id='Conexion'></a>

` # Conexión a Base de Datos en PHP con PDO `

- Este documento explica el funcionamiento de la clase `BasedeDatos` que gestiona la conexión a MySQL utilizando PDO.
<a id='Clase'></a>

` ## 🛠 Clase BasedeDatos`

```
 <?php
 class BasedeDatos {
    const servidor = "localhost";
    const usuariobd = "root";
    const clave = "";
    const nombrebd = "2proyectomvc";

   public static function Conectar() {
        try {
            $conexion = new PDO(
                "mysql:host=" . self::servidor . 
                ";dbname=" . self::nombrebd . 
                ";charset=utf8",
                self::usuariobd,
                self::clave
           );
            
            $conexion->setAttribute(
                 PDO::ATTR_ERRMODE, 
                PDO::ERRMODE_EXCEPTION
            );
             
             return $conexion;
            
        } catch(PDOException $e) {
            die("Error de conexión: " . $e->getMessage());
        }
    }

}
```
<a id='Constantes'></a>

`## Constantes de Configuración`

- const servidor = "localhost";
- const usuariobd = "root";
- const clave = "";
- const nombrebd = "2proyectomvc";

 Primeros Pasos
Iniciar XAMPP (Apache y MySQL)
<a id='Instruciones'></a>

`## Abrir en navegador:`

- http://localhost/2AngarMVC/index.php
- El sistema mostrará:

- Dashboard principal

`## Listado de aviones existentes`

- Opciones de navegación
<a id='Soluciones'></a>

`## 🔧 Solución de Problemas`
- Error 404 - Página no encontrada
- Verificar que la URL sea exacta

- Asegurar que el archivo index.php exista en la ruta correcta

`## Error de Conexión a MySQL`
- Verificar en phpMyAdmin:

- Que exista la base de datos 2proyectomvc

- Que el usuario tenga permisos

- Revisar credenciales en Conexion.php

No se muestran los estilos
Verificar que la carpeta diseño/ contenga los archivos CSS/JS

Revisar rutas en las vistas
<a id='Insertar'></a>

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

# Sistema de Gestión de Aviones ✈️

## 🌟 ¿Para qué sirve este programa?
Este sistema te permite llevar un control completo de los aviones registrados, con funciones para:

- **Registrar** nuevos aviones ✏️  
- **Visualizar** todos los aviones almacenados 👀  
- **Editar** información existente 🛠️  
- **Eliminar** registros cuando sea necesario 🗑️  

## 🛠 Funciones Principales

### 1. Registrar Nuevo Avión ➕
**Qué hace:**  
- Añade nuevos aviones a la base de datos  
- Guarda toda su información importante  

**Cómo usarlo:**  
1. Haz clic en "Agregar Avión"  
2. Completa el formulario con:  
   - Matrícula (identificación única)  
   - Modelo del avión  
   - Aerolínea  
   - Capacidad de pasajeros  
   - Fecha de fabricación  
3. Presiona "Guardar"  

📌 *Ejemplo:*  


### 2. Ver Todos los Aviones 👁️
**Qué hace:**  
- Muestra una lista completa de aviones registrados  
- Permite ordenar y buscar información  

**Qué información muestra:**  
✅ Matrícula  
✅ Modelo  
✅ Aerolínea  
✅ Capacidad  
✅ Fecha de registro  

🔍 *Puedes buscar por:*  
- Cualquier campo  
- Usar filtros avanzados  

### 3. Editar Registros ✏️
**Qué hace:**  
- Actualiza información de aviones existentes  
- Corrige datos incorrectos  

**Pasos para editar:**  
1. Busca el avión en la lista  
2. Haz clic en "Editar"  
3. Modifica los campos necesarios  
4. Guarda los cambios  

⚠️ *Importante:*  
- La matrícula no se puede modificar (es el identificador único)  
- Todos los cambios quedan registrados  

### 4. Eliminar Aviones 🗑️
**Qué hace:**  
- Remueve permanentemente registros de la base de datos  

**Cómo funciona:**  
1. Localiza el avión a eliminar  
2. Haz clic en "Eliminar"  
3. Confirma la acción  

🚨 *Advertencia:*  
- Esta acción no se puede deshacer  
- El sistema pedirá confirmación antes de borrar  

## 📱 Interfaz Sencilla
![Vista previa de la interfaz](diseño/screenshots/pantalla-principal.png)  
*(Imagen ilustrativa del sistema)*

## 🔄 Flujo de Trabajo Típico
1. **Agregas** tus aviones  
2. **Consultas** la información cuando lo necesites  
3. **Actualizas** los datos si hay cambios  
4. **Eliminas** registros obsoletos  

## 💡 Consejos para Usuarios
- Usa el buscador para encontrar aviones rápidamente  
- Exporta los datos a Excel si necesitas hacer análisis  
- Revisa dos veces antes de eliminar un registro  

## 🆘 ¿Necesitas ayuda?
Si tienes problemas:  
1. Revisa que todos los campos estén completos al registrar  
2. Verifica tu conexión a internet  
3. Contacta al administrador si persiste el problema  

✈️ **¡Ahora estás listo para gestionar tu flota de aviones eficientemente!**






