# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Role.create(id:1, name: 'Administrador', description: 'El administrador posee acceso a todo el sistema')
Role.create(id:2, name: 'Vendedor de retacería', description: 'Este usuario tiene la única función de generar ventas dentro de la sección de Retacería')
Role.create(id:3, name: 'Caja de Retacería', description: 'El rol de caja recibe las ventas de los vendedores de Retacería. Tiene la posibilidad de agregar productos de mercería a la venta, eliminar productos ya cargados')
Role.create(id:4, name: 'Ventas de Mercería', description: 'Este usuario puede generar ventas nuevas o recibir desde el rol ventas o caja de Retacería, para agregarle productos a una venta ya iniciada')
Role.create(id:5, name: 'Caja de Mercería', description: 'Este usuario recibe ventas de mercería. Puede generar descuentos sobre cada producto o sobre la venta total, y puede eliminar algún producto cargado.')
User.create(email:'admin@gmail.com',username: 'admin',name:'Administrador',password: 'User*123',role_id:1 )
Color.create(name:'Rojo')
Color.create(name:'Azul')
Color.create(name:'Blanco')
Category.create(name:'Categoria 1')
Category.create(name:'Categoria 2')
