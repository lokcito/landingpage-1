# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Categorium.create([{
  nombre: "Granolas",
  imagen: "https://i.imgur.com/Z7mMWrM.jpg"
}, {
  nombre: "Galletas",
  imagen: "https://i.imgur.com/jMTNk9O.jpg"
}, {
  nombre: "Harinas",
  imagen: "https://i.imgur.com/Uqfxf6M.jpg" 
}, {
  nombre: "Frutos Secos",
  imagen: "https://i.imgur.com/nLiX6p3.jpg" 
}])

# bin/rails db:seed

Producto.create([{
  nombre: "Granolas con miel",
  descripcion: "Aqui una descripcion",
  imagen: "https://i.imgur.com/6eOZcne.png",
  precio: 12,
  categorium_id: Categorium.first.id
}, {
  nombre: "Granolas con chocolate",
  descripcion: "Aqui una descripcion",
  imagen: "https://i.imgur.com/Z7mMWrM.jpg",
  precio: 14,
  categorium_id: Categorium.where(nombre: "Frutos Secos").first.id
}, {
  nombre: "Granolas con chocolate",
  descripcion: "Aqui una descripcion",
  imagen: "https://i.imgur.com/utkCETu.jpg",
  precio: 16,
  categorium_id: Categorium.last.id
}, {
  nombre: "Galletas integrales",
  descripcion: "Aqui una descripcion",
  imagen: "https://i.imgur.com/jMTNk9O.jpg",
  precio: 17,
  categorium_id: Categorium.last.id
}])