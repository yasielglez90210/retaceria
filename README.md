# La Retacería

### Consideraciones
* Versión de Ruby: 2.4
* Motor de base de datos: MySQL

### Como levantar la aplicación

1. Clonar el proyecto.
2. Configurar Gitflow: `git flow init -d` para que tome la configuración por
defecto de ramas.
3. Base de datos:
   1. Editar el archivo `config/database.yml` y utilizar las credenciales con las cuales se configuró MySQL.
   2. Creación: `rails db:create`
   3. Migraciones: `rails db:migrate`
   4. Seeds: `rails db:seed`
4. Iniciar el servidor local con `rails server`.
5. Acceder mediante [http://localhost:3000](http://localhost:3000).
6. Credenciales de acceso al sitio:
   1. Usuario: admim
   2. Password: User*123
    


Esta aplicación viene con el template de Boostrap [AdminLTE](https://adminlte.io/themes/AdminLTE/index2.html).
