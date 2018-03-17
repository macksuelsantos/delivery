# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


ActiveRecord::Base.transaction do
  puts 'Seeding Units...'
    if(Unit.all.empty?)
      puts 'Creating Units Default'
      Unit.create({name: 'UN', description: 'Unidade Padrão'})
      Unit.create({name: 'KG', description: 'Kilograma'})
      Unit.create({name: 'CX', description: 'Caixa'})
    end
end
