# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{ email:'user@email.com', password:'123456'}])


NativeUser.create([{ email:'user@email.com', password:'123456'}])


                                #### Frutas Sections

Item.create([{ name: 'ABACAXI PEROLA',weight:1,value:3.5, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/cmtimg%2F0000000010443.png?alt=media&token=bfb1ac51-85be-4971-b475-662499671e9b", ean:'tes123tedeean', offer: false,buy_limit: 50, user_id: 1, section: 'Frutas'}])

Item.create([{ name: 'AMEIXA FRESCA',weight:1,value:3.5, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/fgopimg%2F0000000001681.png?alt=media&token=07a5b800-41e0-4b31-aa8a-bfd82d974706", ean:'tes123tedeean', offer: true,buy_limit: 100, user_id: 1, section: 'Frutas'}])


                                ###BEBIDAS SECTION

Item.create([{ name: 'REFRIG COCA COLA KS 290ML',weight:1,value:3.49, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/gerais%2Ficon-image-512.jpg?alt=media&token=7e6564db-1cbc-4ca4-a276-ac3c4e294494", ean:'0000000294515', offer: false,buy_limit: 50, user_id: 1, section: 'Bebidas'}])

Item.create([{ name: 'AGUA MINERAL CRYSTAL SABORES 510ML LIMAO',weight:1,value:1.99, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/cometa122019%2F7894900520507.png?alt=media&token=896cbddf-45bb-40f6-8c96-4c0baeb7d266", ean:'7894900520507', offer: false, buy_limit: 6, user_id: 1, section: 'Bebidas'}])


Item.create([{ name: 'REFRIG FANTA KS 290ML LARANJA',weight:1,value:3.49, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/cmtimg%2F0000000294553.png?alt=media&token=fc3c519f-7fe7-410c-9aa2-a76a486c2818", ean:'0000000294553', offer: false, buy_limit: 6, user_id: 1, section: 'Bebidas'}])


                                ###Salgados

Item.create([{ name: 'AMENDOIM BREJEIRA 400G VERMELHO',weight:1,value:1.33, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/gerais%2Ficon-image-512.jpg?alt=media&token=7e6564db-1cbc-4ca4-a276-ac3c4e294494", ean:'7898903602093', offer: false,buy_limit: 50, user_id: 1, section: 'Salgados'}])

Item.create([{ name: 'BATATA FRITA RUFFLES 115G CEBOLA/SALSA',weight:1,value:6.55, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/gerais%2Ficon-image-512.jpg?alt=media&token=7e6564db-1cbc-4ca4-a276-ac3c4e294494", ean:'7892840818159', offer: false, buy_limit: 6, user_id: 1, section: 'Salgados'}])


Item.create([{ name: 'BATATA FRITA RUFFLES 57G CEB/SALSA',weight:1,value:2.22, avaiable: true, durl: "https://firebasestorage.googleapis.com/v0/b/project-482087131936180168.appspot.com/o/fgopimg%2F7892840254940.png?alt=media&token=7647e685-7806-41d4-96f1-632bca929f54", ean:'7892840254940', offer: false, buy_limit: 6, user_id: 1, section: 'Salgados'}])


                                               




