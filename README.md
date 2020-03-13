# README

# grow_up
「grow_up」は教師用の研修を主催者として計画して投稿したり、参加者として申し込んだりすることができるアプリケーションです。

# Requirement
Rails 5.2.4.1

# Function
- ・ユーザー登録
- ・ログイン、ログアウト機能
- ・研修投稿機能
- ・研修編集機能
- ・画像挿入機能
- ・キーワード、カレンダー、地域での絞り込み検索機能
- ・ページネーション機能


# Demo
- 申し込み機能
 https://gyazo.com/84a716a9dbca749d428181d55cd8bfe6

# Author
*     Name：AtsushiTago 
* Twitter : https://twitter.com/assy0209
 

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|first_name|string|null:false|
|first_name_kana|string|null:false|
|last_name|string|null:false|
|last_name_kana|string|null:false|
|email|string|null:false,unique|
|password|string|null:false|

### Association
- has_many :posts
-  has_many :entries

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|title|string|null:false|
|place|string|null:false|
|image|string||
|belongings|text|null:false|
|sentence|text|null:false,unique|
|schedule|date|null:false|
|time|time|null:false|
|endtime|time|null:false|
|capacity|integer|null:false|
|fee|integer|null:false|
|user_id|integer|null:false|
|category_id|integer|null:false|

### Association
- has_many :posts
- has_many :entries
- belongs_to :user
- belongs_to :category, optional:true
- has_many :post_targets
- has_many :targets , through: :post_targets, dependent: :destroy
- validates :title ,:place,:sentence,:belongings,:sentence,:schedule,:time,:endtime,:capacity, presence: true
- mount_uploader :image, ImageUploader
- accepts_nested_attributes_for :post_targets, allow_destroy: true

## entriesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|user_id|integer|null:false|
|post_id|integer|null:false|

### Association
- has_many :users
- has_many :posts

## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|name|string||

### Association
- has_ancestry
- has_many :posts

## targetsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|post|references|foreign_key: true|
|target|integer|foreign_key: true|

### Association
- has_many :post_targets, dependent: :destroy
- has_many :posts , through: :post_targets,dependent: :destroy

## post_targetsテーブル
|Column|Type|Options|
|------|----|-------|
|id|integer||
|post|references|foreign_key: true|
|target|references|foreign_key: true|

### Association
- belongs_to :post
- belongs_to :target