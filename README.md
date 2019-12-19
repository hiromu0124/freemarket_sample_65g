## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|||
|password|||
|full-name|||
|name-katakana|||
|tell|||
|thumbnail|||
|self-introduction|||
|adress_id|||
|birthday-year|||
|birthday-manth|||
|birthday-day|||


## productsテーブル
|Column|Type|Options|
|------|----|-------|
|name|||
|product-explain|||
|price|||
|category_id|||
|brand_id|||
|day_id|||
|prefecture_id|||
|transactions-status_id|||
|condition_id|||
|fee_id|||




## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|message|||
|user_id|||
|product_id|||



## likesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|||
|product_id|||


## salersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|||
|product_id|||


## buyersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|||
|product_id|||


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|||
|user_id|||
|product_id|||


## prefecturesテーブル
|Column|Type|Options|
|------|----|-------|
|prefecture-name|||


## userlikesテーブル
|Column|Type|Options|
|------|----|-------|
|smile_id|||
|user-likes-comment|||
|receive-user_id|||
|user_id|||

## smilesテーブル
|Column|Type|Options|
|------|----|-------|
|mark|||


## birthday-yearsテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-year|||


## birthday-manthsテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-manth|||


## birthday-daysテーブル
|Column|Type|Options|
|------|----|-------|
|birthday-day|||


## adressesテーブル
|Column|Type|Options|
|------|----|-------|
|postalcode|||
|city|||
|little-adress|||
|building|||
|prefecture_id|||


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|||
|product_id|||


## daysテーブル
|Column|Type|Options|
|------|----|-------|
|day|||


## categorysテーブル
|Column|Type|Options|
|------|----|-------|
|name|||
|parent-id|||


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|name|||


## feesテーブル
|Column|Type|Options|
|------|----|-------|
|fee|||


## conditionsテーブル
|Column|Type|Options|
|------|----|-------|
|condition|||


## transaction-statusesテーブル
|Column|Type|Options|
|------|----|-------|
|transaction-status|||