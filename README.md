# README
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
