# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string   "name"
# t.integer  "price"
# t.text     "description"
# t.datetime "created_at",              null: false
# t.datetime "updated_at",              null: false
# t.integer  "price_cents", default: 0, null: false
# end
puts 'Cleaning database'
# Suggestion.destroy_all
# Reservation.destroy_all
# User.destroy_all
# Pack.destroy_all
Diploma.destroy_all

puts 'Creating admin'

# admin = User.create!({
#   first_name: "Do",
#   last_name: "It Abroad",
#   email: "info@do-it-abroad.com",
#   password: "doitabroad2017",
#   admin: true
# }
# )

# puts 'Creating packs'
#
# starter = Pack.create!({
#   name: "Starter des indecis",
#   description: "Un accès illimité au contenu avec les ressources essentielles pour partir !",
#   price_cents: 9900,
#   features: ["Nos tips pour préparer son départ", "Des conseils pour tes inscriptions, ton CV et tes lettres de motivation !", "5 formations qui correspondent à ton profil et à tes préférences !"],
#   sku: "starter"
# }
# )
#
# plus = Pack.create!({
#   name: "Starter plus",
#   description: "Recommandé par nos étudiants ! On te trouve ta formation et on fait tes inscriptions !",
#   price_cents: 49900,
#   features: ["Coaching skype orientation internationale", "Choix d'une université parmi les 5 proposées", "Prise en charge des inscriptions"],
#   sku: "plus"
# }
# )
#
# premium = Pack.create!({
#   name: "Starter premium",
#   description: "Pars à l'étranger sereinement ! On s'occupe de tout !",
#   price_cents: 79900,
#   features: ["Coaching skype orientation internationale", "Choix d'une université parmi les 5 proposées", "Prise en charge des inscriptions et du logement"],
#   sku: "premium"
# }
# )

puts 'Creating diplomas'

puts '> Creating bachelors'

CSV.foreach('app/assets/data/bachelors/Agriculture&Forestry.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/AppliedSciences&Professions.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Arts,Design&Architecture.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Business&Management.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/ComputerScience&IT.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Education&Training.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Engineering&Technology.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/EnvironmentalStudies&EarthSciences.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Hospitality,Leisure&Sports.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Humanities.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Journalism&Media.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/Law.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/MedicineandHealth.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/bachelors/SocialSciences.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

puts 'Done'

puts '> Creating masters'

CSV.foreach('app/assets/data/masters/Agriculture&Forestry.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Applied Sciences&Professions.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Arts,Design&Architecture.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Business&Management.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/ComputerScience&IT.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Education&Training.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Engineering&Technology.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/EnvironmentalStudies&EarthSciences.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Hospitality,Leisure&Sports.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Humanities.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Journalism&Media.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Law.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/Medicine&Health.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/NaturalSciences&Mathematics.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

CSV.foreach('app/assets/data/masters/SocialSciences.csv', :headers => true) do |row|
  Diploma.create!({
    google_sheets_id: row["id"],
    name: row["name"],
    discipline: row["disciplineName"],
    program_website: row["programmeWebsiteLink"],
    country: row["country"],
    city: row["city"],
    university: row["university"],
    tution_fees: row["tuitionFees"],
    tution_fees_period: row["tuitionFeesPeriod"],
    degree_length_period: row["degreeLenght"],
    delivery_mode: row["deliveryMode"]
    })
end

puts 'Done'

puts 'All done'

# session = GoogleDrive::Session.from_service_account_key(
# "DOITABROAD-98ff6348807d.json")
#
# baf = session.spreadsheet_by_title("Bachelor Agriculture & Forestry").worksheets[0]
# baf.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# maf = session.spreadsheet_by_title("Master Agriculture & Forestry").worksheets[0]
# maf.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# masp = session.spreadsheet_by_title("Master Applied Sciences & Professions").worksheets[0]
# masp.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# basp = session.spreadsheet_by_title("Bachelor Applied Sciences & Professions").worksheets[0]
# basp.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mbm = session.spreadsheet_by_title("Master Business & Management").worksheets[0]
# mbm.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mbm = session.spreadsheet_by_title("Bachelor Business & Management").worksheets[0]
# mbm.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# bcsi = session.spreadsheet_by_title("Bachelor Computer Science & IT").worksheets[0]
# bcsi.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mcsi = session.spreadsheet_by_title("Master Computer Science & IT").worksheets[0]
# mcsi.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# met = session.spreadsheet_by_title("Master Education & Training").worksheets[0]
# met.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# bet = session.spreadsheet_by_title("Bachelor Education & Training").worksheets[0]
# bet.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# bete = session.spreadsheet_by_title("Bachelor Engineering & Technology").worksheets[0]
# bete.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mete = session.spreadsheet_by_title("Master Engineering & Technology").worksheets[0]
# mete.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# meses = session.spreadsheet_by_title("Master Environmental Studies & Earth Sciences").worksheets[0]
# meses.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# beses = session.spreadsheet_by_title("Bachelor Environmental Studies & Earth Sciences").worksheets[0]
# beses.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# bhls = session.spreadsheet_by_title("Bachelor Hospitality, Leisure & Sports").worksheets[0]
# bhls.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mhls = session.spreadsheet_by_title("Master Hospitality, Leisure & Sports").worksheets[0]
# mhls.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mjm = session.spreadsheet_by_title("Master Journalism & Media").worksheets[0]
# mjm.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# bjm = session.spreadsheet_by_title("Bachelor Journalism & Media").worksheets[0]
# bjm.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# bl = session.spreadsheet_by_title("Bachelor Law").worksheets[0]
# bl.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# ml = session.spreadsheet_by_title("Master Law").worksheets[0]
# ml.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mss = session.spreadsheet_by_title("Master Social Sciences").worksheets[0]
# mss.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# bss = session.spreadsheet_by_title("Bachelor Social Sciences").worksheets[0]
# bss.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mhm = session.spreadsheet_by_title("Master Medicine and Health").worksheets[0]
# mhm.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mh = session.spreadsheet_by_title("Master Humanities").worksheets[0]
# mh.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end
#
# mada = session.spreadsheet_by_title("Master Arts, Design & Architecture").worksheets[0]
# mada.list.each do |bachelor|
#   Diploma.create!({
#     google_sheets_id: bachelor["id"],
#     name: bachelor["name"],
#     discipline: bachelor["disciplineName"],
#     program_website: bachelor["programmeWebsiteLink"],
#     country: bachelor["country"],
#     city: bachelor["city"],
#     university: bachelor["university"],
#     tution_fees: bachelor["tuitionFees"],
#     tution_fees_period: bachelor["tuitionFeesPeriod"],
#     degree_length_period: bachelor["degreeLenght"],
#     delivery_mode: bachelor["deliveryMode"]
#     })
# end


puts 'Done'
