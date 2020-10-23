require 'csv'

Stat.delete_all
Type.delete_all
Pokeman.delete_all

puts "Total: #{Stat.count} stats"
puts "Total: #{Type.count} types"
puts "Total: #{Pokeman.count} pokemon"

filename=Rails.root.join('db/Pokemon.csv')
csv_data = File.read(filename)

pokemons = CSV.parse(csv_data, headers: true)

pokemons.each do |m|
  type = Type.find_or_create_by(type1: m['Type 1'], type2: m['Type 2'])
  stat = Stat.find_or_create_by(totalStats: m['Total'], hp: m['HP'], attack: m['Attack'], defense: m['Defense'], spatk: m['Sp. Atk'], spdef: m['Sp. Def'], speed: m['Speed'])
  pokemon = Pokeman.create(entryNumber: m['Entry'], pokemonName: m['Name'], legendary: m['Legendary'], generation: m['Generation'], stat: stat, type: type)
  puts pokemon.errors.messages
  # pokemon = Pokeman.create(
  #   entryNumber: m['Entry'],
  #   name: m['Name'],
  #   legendary: m['Legendary'],
  #   generation: m['Generation'],
  #   Stats_id: stat.id,
  #   Type_id: type.id
  # )

  # if type && type.valid? && stat && stat.valid?

  # else puts "Incvalid shit"
  # end
end

puts "Created #{Stat.count} stats"
puts "Created #{Type.count} types"
puts "Created #{Pokeman.count} pokemon"