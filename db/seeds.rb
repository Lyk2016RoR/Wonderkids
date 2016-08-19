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

l = Language.create(name:"İngilizce")
p = Publisher.create(name:"YKB")
a1 = Author.create(name:"Haruki Murakami",description:"süper")
a2 = Author.create(name:"George Orwell",description:"muhteşem")
a3 = Author.create(name:"Kurt Vonnegut",description:"mükemmel")
a4 = Author.create(name:"William Shakespeare",description:"zengin")





b1 = Book.create(name: 'Sahilde Kafka', description: 'İki kahramanın öyküsünü paralel anlatan güzel bir kitap. ', category_id: c1.id, language_id: l.id, author_id: a1.id ,publisher_id:p.id)
b2 = Book.create(name: 'Bin Dokuz Yüz Seksen Dört', description: 'İnsanların nasıl da apolitikleştirildiklerini, nasıl da her şeyden korkan bir hale getirildiklerini çok iyi anlatır.', category_id: c3.id, language_id: l.id, author_id: a2.id ,publisher_id:p.id)
b3 = Book.create(name: 'Kedi Beşiği', description: 'Kitapta kahraman, Hiroşimaya atılan ilk atom bombası ile ilgili bir kitap yazmak istemekte ve bunun için araştırma yapmaktadır.', category_id: c3.id, language_id: l.id, author_id: a3.id ,publisher_id:p.id)
b4 = Book.create(name: 'Kış Masalı', description: 'Hiçbir neden yokken karısı Hermioneyi kıskanan, onunla tüm ilişkisini kesip kızını da öldürten Kral Leontesin bağışlanma öyküsü...', category_id: c2.id, language_id: l.id, author_id: a4.id ,publisher_id:p.id)

co1 = Comment.create(body: "Çok güzel bir kitap", book_id: b1.id, user: u1)
co1 = Comment.create(body: "Çok sürükleyici", book_id: b1.id, user: u1)

