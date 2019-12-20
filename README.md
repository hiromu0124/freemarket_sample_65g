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
|prefecture_id|integer|null: false, foreign_key: true|
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


## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product_explain|text|null: false|
|price|integer|null: false, check: price >= 0, price < 10000000|
|category_id|integer|null: false, foreign_key: true|
|brand_id|integer|foreign_key: true|
|send-day_id|integer|null: false, foreign_key: true|
|prefecture_id|integer|null: false, foreign_key: true|
|saler_id|integer|foreign_key: true|
|transactions_status_id|integer|null: false, foreign_key: true|
|condition_id|integer|null: false, foreign_key: true|
|fee_id|integer|null: false, foreign_key: true|
|size_id|integer|foreign_key: true|

### Association
- has_many :product-messages
- has_many :product-likes
- has_one :order
- has_many :product-comments
- belongs_to :prefecture
- belongs_to :product-category
- belongs_to :product-brand
- has_many :product-images
- belongs_to :product-send-day
- belongs_to :product-fee
- belongs_to :product-condition
- belongs_to :product-transaction-status
- belongs_to :product-size


## product_messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product



## product_likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :product


## ordersテーブル
|Column|Type|Options|
|------|----|-------|
|buyer_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :product



## product_commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|product_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :user
- belongs_to :product


## userlikesテーブル
|Column|Type|Options|
|------|----|-------|
|rank_id|integer|null: false, foreign_key: true|
|user_likes_comment|text||
|receive_user_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|


### Association
- belongs_to :rank
- belongs_to :user



## ranksテーブル
|Column|Type|Options|
|------|----|-------|
|rank|string|null: false, unique:true|

### Association
- has_many :userlikes



### Association
- belongs_to :user
- belongs_to :prefecture


## product_imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :product


## product_send_daysテーブル
|Column|Type|Options|
|------|----|-------|
|day|integer|null: false, unique:true|

### Association
- has_many :products



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



## product_feesテーブル
|Column|Type|Options|
|------|----|-------|
|fee|integer|null: false, unique:true|

### Association
- has_many :products


## product_conditionsテーブル
|Column|Type|Options|
|------|----|-------|
|condition|string|null: false, unique:true|

### Association
- has_many :products



## product_transaction_statusesテーブル
|Column|Type|Options|
|------|----|-------|
|transaction_status|string|null: false, unique:true|

### Association
- has_many :products



## product_sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null: false, unique:true|

### Association
- has_many :products