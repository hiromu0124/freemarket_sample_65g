# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ProductCategory.create(name: "レディース")
ProductCategory.create(name: "メンズ")
ProductCategory.create(name: "ベビー・キッズ")
ProductCategory.create(name: "インテリア・住まい")
ProductCategory.create(name: "本・音楽・ゲーム")
ProductCategory.create(name: "その他")
ProductCategory.create(name: "トップス",parent_id: "1")
ProductCategory.create(name: "ジャケット/アウター",parent_id: "1")
ProductCategory.create(name: "パンツ",parent_id: "1")
ProductCategory.create(name: "トップス",parent_id: "2")
ProductCategory.create(name: "ジャケット/アウター",parent_id: "2")
ProductCategory.create(name: "パンツ",parent_id: "2")
ProductCategory.create(name: "ベビー服(女の子用)~95cm",parent_id: "3")
ProductCategory.create(name: "ベビー服(男の子用)~95cm",parent_id: "3")
ProductCategory.create(name: "ベビー服(男女兼用)~95cm",parent_id: "3")
ProductCategory.create(name: "キッチン/食器",parent_id: "4")
ProductCategory.create(name: "ベット/マットレス",parent_id: "4")
ProductCategory.create(name: "ソファー/ソファーベット",parent_id: "4")
ProductCategory.create(name: "Tシャツ/カットソー(半袖/袖なし)",parent_id: "7")
ProductCategory.create(name: "テーラードジャケット",parent_id: "8")
ProductCategory.create(name: "デニム/ジーンズ",parent_id: "9")
ProductCategory.create(name: "Tシャツ/カットソー(半袖/袖なし)",parent_id: "10")
ProductCategory.create(name: "テーラードジャケット",parent_id: "11")
ProductCategory.create(name: "デニム/ジーンズ",parent_id: "12")
ProductCategory.create(name: "トップス",parent_id: "13")
ProductCategory.create(name: "トップス",parent_id: "14")
ProductCategory.create(name: "トップス",parent_id: "15")
ProductCategory.create(name: "食器",parent_id: "16")
ProductCategory.create(name: "セミシングルベット",parent_id: "17")
ProductCategory.create(name: "ソファーセット",parent_id: "18")
ProductBrand.create(name: "シャネル")
ProductBrand.create(name: "ナイキ")
ProductBrand.create(name: "ルイ ヴィトン")
ProductBrand.create(name: "シュプリーム")
ProductBrand.create(name: "アディダス")