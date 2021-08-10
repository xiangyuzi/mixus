# アプリ名
**Mixus**  (Mix Nexusを組み合わせた造語)  
  
# 概要
**何かを形にしたいけどそのアイディアがない人**(技術力を高めたい"Creator")   
**アイディアはあるけどそれを形にすることができない人**(発想力を発信したい"Imaginator"）  
この二人を繋ぐ場を提供する  
- Imaginatorはアイディアを投稿する
- Creatorはアイディアをもとに作品をつくり、それを投稿する

# 制作背景（意図）
「作品を作りたいが、そのネタとなるアイディアがない」「せっかく思いついたアイディアを誰かに共有したい」という思いを持つユーザーを
## Usersテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| last_name          | string  | null: false |
| first_name         | string  | null: false |
| birth_date         | date    | null: false |
| prefecture_id      | integer | null: false |
| profile            | text    |             |

### Association

- has_many :ideas
- has_many :orders
- has_many :creations

## Ideasテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| catchphrase | string     | null: false       |
| detail      | text       | null: false       |
| category_id | integer    | null: false       |
| user        | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :order
- has_one :creation

## Ordersテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| deadline_id | integer    | null: false       |
| email       | string     | null: false       |
| user        | references | foreign_key: true |
| item        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item

## Creationsテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| comment     | text       | null: false       |
| deadline_id | integer    | null: false       |
| order       | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :idea
