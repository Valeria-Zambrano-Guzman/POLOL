# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "*" * 80
puts "Destroying everything"
puts "*" * 80
Specialitie.destroy_all
SubService.destroy_all
Service.destroy_all
Appointment.destroy_all
Review.destroy_all
User.destroy_all
puts "*" * 80
puts "Done!"
puts "*" * 80
puts ""
puts "*" * 80
puts "Creating professionals"
puts "*" * 80
professional_one = Professional.new(
  email: "pro_one@mail.com",
  password: "123456",
  address: "Amunátegui 20, Santiago, Chile",
  first_name: "Sergio",
  last_name: "Soto",
  biography: "Especialista en arreglo de sifón",
  phone_number: "+56912345678"
)
professional_one.save!

professional_two = Professional.new(
  email: "pro_two@mail.com",
  password: "123456",
  address: "Huérfanos 1112, Santiago, Chile",
  first_name: "Miguel",
  last_name: "Pérez",
  biography: "Especialista en arreglo de sockets",
  phone_number: "+56934567891"
)
professional_two.save!

professional_three = Professional.new(
  email: "pro_three@mail.com",
  password: "123456",
  address: "Huérfanos 1261, Santiago, Chile",
  first_name: "José",
  last_name: "Ramirez",
  biography: "Especialista en arreglo de sockets",
  phone_number: "+56956789452"
)
professional_three.save!
puts "*" * 80
puts "Done!"
puts "*" * 80
puts ""
puts "*" * 80
puts "Creating customers"
puts "*" * 80
customer_one = Customer.new(
  email: "mauri@mail.com",
  password: "123456",
  first_name: "Mauricio",
  last_name: "castro",
  phone_number: "56945857458",
  address: "Eduardo Frei 19"
)
customer_one.save!

customer_two = Customer.new(
  email: "jose@mail.com",
  password: "123456",
  first_name: "Jose",
  last_name: "Chávez",
  phone_number: "56955878541",
  address: "Los Placeres 7"
)
customer_two.save!
puts "*" * 80
puts "Done!"
puts "*" * 80
puts ""
puts "*" * 80
puts "Creating services"
puts "*" * 80

gasfiter = Service.new(
  category: "gasfiter",
)

gasfiter.save!

electricista = Service.new(
  category: "electricista",
)

electricista.save!
puts "*" * 80
puts "Done!"
puts "*" * 80
puts ""
puts "*" * 80
puts "Creating sub services"
puts "*" * 80

sifon = SubService.new(
  sub_category: "Cambio de sifón",
  service: gasfiter,
  price: 3500
)
sifon.save!

llave = SubService.new(
  sub_category: "Cambio de llave de paso",
  service: gasfiter,
  price: 5000
)
llave.save!

socket = SubService.new(
  sub_category: "Cambio de socket",
  service: electricista,
  price: 8000
)
socket.save!
puts "*" * 80
puts "Done!"
puts "*" * 80
puts ""
puts "*" * 80
puts "Creating Specialities"
puts "*" * 80

pro_one_sifon = Specialitie.new(
  professional: professional_one,
  sub_service: sifon,
  description: "pro_one_sifon"
)
pro_one_sifon.save!

pro_one_llave = Specialitie.new(
  professional: professional_one,
  sub_service: llave,
  description: "pro_one_llave"
)
pro_one_llave.save!

pro_two_socket = Specialitie.new(
  professional: professional_two,
  sub_service: socket,
  description: "pro_two_socket"
)
pro_two_socket.save!

pro_three_socket = Specialitie.new(
  professional: professional_three,
  sub_service: socket,
  description: "pro_three_socket"
)
pro_three_socket.save!
puts "*" * 80
puts "Done!"
puts "*" * 80
