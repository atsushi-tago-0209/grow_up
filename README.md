# README

## アプリケーション名「grow_up」
「grow_up」は教師用の研修を主催者として計画して投稿したり、参加者として申し込んだりすることができるアプリケーションです。

## 制作意図
教職員の研修が行われやすくなったり、参加する人が参加しやすいようにしたいと思いで、このアプリケーションを作成しました。
前職の教職についていたときに、他府県の研修に参加したいと思っても、回覧板で研修を探したり、特定の学校のホームページを閲覧して申し込んだりする形式に不便を感じていました。また、参加費を払うのに、振り込みをしたりすることもあり、時間も奪われていました。こういったことを改善したいと思いました。

## Requirement
- Rails 5.2.4.1
- Ruby/MySQL/Github/AWS/Visual Studio Code

## 接続先情報
- http://18.180.123.106/

# Githubリポジトリ
- https://github.com/atsushi-tago-0209/grow_up 

# テスト用アカウント
- 名前 山田 太郎
- 名前（カナ）ヤマダ タロウ
- メールアドレス: y@gmail.com
- パスワード: yyyyyy


## Function
- ユーザー登録
- ログイン、ログアウト機能
- 研修投稿機能
- 研修申し込み機能
- 研修編集機能
- 画像挿入機能
- キーワード検索機能
- カレンダー検索機能
- 地域での絞り込み検索機能
- ページネーション機能


## Demo
- ホーム画面
 https://gyazo.com/f725dd71d5ca7d91eea329c7f4b33f80
- 申し込み機能
 https://gyazo.com/84a716a9dbca749d428181d55cd8bfe6
- イベント作成
 https://gyazo.com/1dc3d16f1f6c48635d94e6d30f8faff5

# 工夫したポイント
- 研修に参加するかどうか、一つ確認画面をはさんだことです。そうすることで、ユーザーが間違って参加することが少なくなると考えました。
- ３つの絞り込み検索を設けたことです。 そうすることで、ユーザーが検索する方法が選ぶことができ、参加したい研修を見つけやすくなるようにしました。

# 今後実装したい機能
- 気になっている機能（いいね）
- オンラインでの研修url欄
- カレンダー一覧から、研修を検索する機能

## Author
*    Name : AtsushiTago 
* Twitter : https://twitter.com/assy0209
 
## DB設計
- https://gyazo.com/6a5acc74b5b325b4c23586e633dc6863

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