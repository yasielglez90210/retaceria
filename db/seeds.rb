# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(id:2, name: 'Administrador', description: 'El administrador posee acceso a todo el sistema')
Role.create(id:1, name: 'Vendedor de Retacería', description: 'Este usuario tiene la única función de generar ventas dentro de la sección de Retacería')
User.create(email:'admin@gmail.com',username: 'admin',name:'Administrador',password: 'User*123',role_id:1 )
