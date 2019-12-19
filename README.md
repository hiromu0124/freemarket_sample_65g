## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|||
|password|||
|full-name|string|null: false|
|name-katakana|string|null: false|
|tell|string|null: false|
|thumbnail|string||
|self-introduction|text||
|adress_id|integer|null: false|
|birthday-year|integer|null: false|
|birthday-manth|integer|null: false|
|birthday-day|integer|null: false|


## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|product-explain|text|null: false|
|price|integer|null: false|
|category_id|integer|null: false|
|brand_id|integer||
|send-day_id|integer|null: false|
|prefecture_id|integer|null: false|
|transactions-status_id|integer|null: false|
|condition_id|integer|null: false|
|fee_id|integer|null: false|


## product-messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|text|null: false|
|user_id|integer|null: false|
|product_id|integer|null: false|



## product-likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|product_id|integer|null: false|


## salersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|product_id|integer|null: false|


## buyersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false|
|product_id|integer|null: false|


## product-commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false|
|product_id|integer|null: false|


## prefecturesテーブル
|Column|Type|Options|
|------|----|-------|
|prefecture-name|string|null: false|


## userlikesテーブル
|Column|Type|Options|
|------|----|-------|
|rank_id|integer|null: false|
|user-likes-comment|text||
|receive-user_id|integer|null: false|
|user_id|integer|null: false|


## ranksテーブル
|Column|Type|Options|
|------|----|-------|
|rank|string|null: false|


## birthday-yearsテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-year|integer|null: false|


## birthday-manthsテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-manth|integer|null: false|


## birthday-daysテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-day|integer|null: false|


## adressesテーブル
|Column|Type|Options|
|------|----|-------|
|postalcode|string|null: false|
|city|string|null: false|
|little-adress|string|null: false|
|building|string|null: false|
|prefecture_id|integer|null: false|


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|product_id|integer|null: false|


## send-daysテーブル
|Column|Type|Options|
|------|----|-------|
|day|integer|null: false|


## product-categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|parent-id|integer||


## product-brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|


## product-feesテーブル
|Column|Type|Options|
|------|----|-------|
|fee|integer|null: false|


## product-conditionsテーブル
|Column|Type|Options|
|------|----|-------|
|condition|string|null: false|


## product-transaction-statusesテーブル
|Column|Type|Options|
|------|----|-------|
|transaction-status|string|null: false|


## product-sizesテーブル
|Column|Type|Options|
|------|----|-------|
|size|string|null: false|