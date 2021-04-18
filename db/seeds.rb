# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require_relative './variables.rb'
require_relative './methods.rb'

puts 'Start categories creation'

@categories.each { |category| Category.create(name: category) }

puts 'End categories creation'

puts 'Start products creation with category_id: 1'

@bebidas_energeticas.each { |bebida| create_instance(bebida) }

puts 'End products creation with category_id: 1'

puts 'Start products creation with category_id: 2'

@piscos.each { |pisco| create_instance(pisco, 'pisco') }

puts 'End products creation with category_id: 2'

puts 'Start products creation with category_id: 3'

@rones.each { |ron| create_instance(ron, 'ron') }

puts 'End products creation with category_id: 3'

puts 'Start products creation with category_id: 4'

@bebidas.each { |bebida| create_instance(bebida, 'bebida') }

puts 'End products creation with category_id: 4'

puts 'Start products creation with category_id: 5'

@snacks.each { |snack| create_instance(snack, 'snack') }

puts 'End products creation with category_id: 5'

puts 'Start products creation with category_id: 6'

@cervezas.each { |cerveza| create_instance(cerveza, 'cerveza') }

puts 'End products creation with category_id: 6'

puts 'Start products creation with category_id: 7'

@vodkas.each { |vodka| create_instance(vodka, 'vodka') }

puts 'End products creation with category_id: 7'