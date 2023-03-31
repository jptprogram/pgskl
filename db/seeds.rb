
User.create(email: 'test@skl.com', password: '12345678')

# Equipos
10.times do
  Grua.create(
    modelo: Faker::Vehicle.model,
    marca: Faker::Vehicle.make,
    disponible: true,
    link: Faker::Internet.url,
    descripcion: Faker::Lorem.paragraph,
    category: Grua::CATEGORIES.sample
  )
end

10.times do
  Tractor.create(
    modelo: Faker::Vehicle.model,
    marca: Faker::Vehicle.make,
    disponible: true,
    link: Faker::Internet.url,
    descripcion: Faker::Lorem.paragraph
  )
end

10.times do
  TranspaletaApiladorElectrico.create(
    modelo: Faker::Vehicle.model,
    marca: Faker::Vehicle.make,
    disponible: true,
    link: Faker::Internet.url,
    descripcion: Faker::Lorem.paragraph
  )
end

10.times do
  Maquinariapesada.create(
    modelo: Faker::Vehicle.model,
    marca: Faker::Vehicle.make,
    disponible: true,
    link: Faker::Internet.url,
    descripcion: Faker::Lorem.paragraph
  )
end

# Ventos
10.times do
  Vento.create(
    modelo: Faker::Vehicle.model,
    marca: Faker::Vehicle.make,
    disponible: true,
    link: Faker::Internet.url,
    descripcion: Faker::Lorem.paragraph,
    category: Vento::CATEGORIES.sample
  )
end

10.times do
  Novedad.create(
    descripcion: Faker::Lorem.paragraph,
    titulo: Faker::Lorem.sentence
  )
end

# Repuestos and Equipos missing
