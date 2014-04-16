# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Administrador', active: true, role: 'admin', email: 'geo@geo.com', password: '@geo123#')
User.create(name: 'Usuario', active: true, role: 'usuario', email: 'usuario@user.com', password: '@user123#')
