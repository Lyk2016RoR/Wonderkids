# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c1 = Category.create(name: "Aksiyon")
c2 = Category.create(name: "Dram")
c3 = Category.create(name: "Bilim Kurgu")

l = Language.create(name:"İngilizce")
p = Publisher.create(name:"İngilizce")
a = Author.create(name:"Haruki Murakami",description:"süper")

Book.create(name: 'Sahilde Kafka', description: 'Über Züper bir kitap', category: c1, language: u, author:a ,publisher:p )