# アプリ名
**Mixus**  (Mix Nexusを組み合わせた造語)  
<br/>
  
# 概要
**何かを形にしたいけどそのアイディアがない人**(技術力を高めたい"Creator")   
**アイディアはあるけどそれを形にすることができない人**(発想力を発信したい"Imaginator"）  
この二人を繋ぐ場を提供する  
- Imaginatorはアイディアを投稿する
- Creatorはアイディアをもとに作品をつくり、それを投稿する
<br/>
<br/>

# 制作背景（意図）
「作品を作りたいが、そのネタとなるアイディアがない」「せっかく思いついたアイディアを誰かに共有したい」そんな思いを持つユーザーを結びつけ、それぞれの悩みを互いに解決し合います。  
開発のきっかけは、自身がオリジナルアプリのテーマに悩んだ際に、「何かを形にしたいが、良い題材がない」という同じ悩みを持つ人は多くいるのではないか、と思ったことです。  
また、これとは逆に「アイディアは思いつくけどそれを形にする力が無い」「形にするつもりはないが、アイディアは発信したい」という悩みもあるはずだと考え、これらの課題を同時に解決できる場を作りました。  
### お互いがWin-Winな関係になる
Imaginatorにはアイディア投稿ポイントを、Creatorには作品投稿ポイントをそれぞれ加算していきます。これを「*信用スコア*」のように扱い、各ユーザーの発想力、技術力を数値として表します。  
将来的には、この数値が就職活動など自身の力を示す必要がある場面で、個人の評価として利用されることを目指します。  
(*信用スコア*  
個人の信用力を数値化したもの。米国や中国で活用が進んでおり、特に中国大手企業アリババグループ傘下の芝麻信用(ジーマ信用)の信用スコアは中国国内で標準として普及している。目に見えない「信用」を数値化し、様々な特典やサービスが受けられる。日本でも、みずほ銀行とソフトバンクが出資した「J.Score」やLINE CreditのLINE Scoreなどが開始されている。  
参考:総務省平成30年版情報通信白書)
<br/>
<br/>

# 使用技術(開発環境)
## バックエンド
Ruby、Ruby on Rails
***
## フロントエンド
***
## データベース
MySQL、SequelPro
***
## インフラ
***
## Webサーバー
***
## アプリケーションサーバー
***
## ソース管理
GitHub、GitHubDesktop
***
## テスト
RSpec
***
## エディタ
VSCode
***
<br/>

# 今後実装したい機能
- 投稿数に応じてユーザーにポイントが加算される機能
- 保有ポイントがユーザーページにグラフで表示され、投稿の都度更新される機能
- 作品の動画投稿機能
- アイディアの検索機能
- 「いいね」機能
- 作品へのコメント機能
<br/>
<br/>

# DB設計
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
