# La Retacería

### Consideraciones
* Versión de Ruby: 2.4
* Motor de base de datos: MySQL

### Como levantar la aplicación

1. Clonar el proyecto.
2. Configurar Gitflow: `git flow init -d` para que tome la configuración por
defecto de ramas.
3. Base de datos:
   1. Configuración: copiar el archivo `config/database_example.yml` y guardarlo
  como `config/database.yml`, utilizando las credenciales con las cuales se configuró MySQL.
   2. Creación: `rails db:create`
   3. Migraciones: `rails db:migrate`
   4. Seeds: `rails db:seed`
4. Iniciar el servidor local con `rails server`.
5. Acceder mediante [http://localhost:3000](http://localhost:3000).
6. Usuario: admim, Password: User*123
    


Esta aplicación viene con el template de Boostrap [AdminLTE](https://adminlte.io/themes/AdminLTE/index2.html).
