## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|||
|password|||
|full_name|string|null: false|
|nickname|string|null: false|
|name_kana|string|null: false|
|tell|string|null: false, unique:true|
|thumbnail|string||
|self_introduction|text||
|postalcode|string|null: false|
|city|string|null: false|
|little_adress|string|null: false|
|building|string|null: false|
|prefecture_id|integer|null: false|
|birthday_year|integer|null: false|
|birthday_manth|integer|null: false|
|birthday_day|integer|null: false|

### Association
- has_many :userlikes
- belongs_to :birthday-year
- belongs_to :birthday-month
- belongs_to :birthday-day
- has_many :product-messages
- has_many :product-likes
- has_many :orders
- has_many :product-comments
- has_many :products



## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product_explain|text|null: false|
|price|references|null: false|
|product_category_id|references|null: false, foreign_key: true|
|product_brand_id|references|foreign_key: true|
|product_send_day|integer|null: false, unique:true|
|prefecture_id|integer|null: false|
|user_id|references|null: false, foreign_key: true|　（販売者）
|transaction_status|string|null: false, unique:true|
|product_condition|string|null: false, unique:true|
|product_fee|integer|null: false, unique:true|
|product_size|string||

### Association
- has_many :product-messages
- has_many :product-likes
- has_one :order
- has_many :product-comments
- belongs_to :product-category
- belongs_to :product-brand
- has_many :product-images
- belongs_to :user



## product_messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|references|null: false, foreign_key: true|　（メッセージを送信した人）
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product



## product_likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|　（いいねをした人）
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product



## ordersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|　(購入者)
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product



## product_commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|references|null: false, foreign_key: true|
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product



## userlikesテーブル
|Column|Type|Options|
|------|----|-------|
|rank_id|references|null: false, foreign_key: true|
|user_likes_comment|text||
|saler_id|references|null: false, foreign_key: true|　（販売者かつ、likeを受け取った人）
|buyer_id|references|null: false, foreign_key: true|　（購入者かつ、likeを送った人）


### Association
- belongs_to :rank
- belongs_to :saler, class_name: "User"
- belongs_to :buyer, class_name: "User"



## ranksテーブル
|Column|Type|Options|
|------|----|-------|
|rank|string|null: false, unique:true|

### Association
- has_many :userlikes



## product_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product_id|references|null: false, foreign_key: true|

### Association
- belongs_to :product



## product_categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|
|parent_id|integer||

### Association
- has_many :products



## product_brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false, unique:true|

### Association
- has_many :products


aaa
shun part2 part4