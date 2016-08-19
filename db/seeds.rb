# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(email: "user@user.com", password: "123456")

c1 = Category.create(name: "Aksiyon")
c2 = Category.create(name: "Dram")
c3 = Category.create(name: "Bilim Kurgu")

co1 = Comment.create(body: "Çok güzel bir kitap", book_id: b1.id, user: u1)
co1 = Comment.create(body: "Çok sürükleyici", book_id: b1.id, user: u1)

l = Language.create(name:"İngilizce")
p = Publisher.create(name:"YKB")
a = Author.create(name:"Haruki Murakami",description:"süper")

b1 = Book.create(name: 'Sahilde Kafka', description: 'kafkayı anlatan bir kitap', category_id: c1.id, language_id: l.id, author_id: a.id ,publisher_id:p.id ,comment_id:co1.id )