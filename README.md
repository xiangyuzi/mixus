# アプリ  MIXUS
https://user-images.githubusercontent.com/86099522/133541026-b30573ed-ca79-4db0-a2ef-21dd297335e8.mov

  
# 概要
**何かを形にしたいけどそのアイディアがない人**(技術力を高めたい"Creator")   
**アイディアはあるけどそれを形にすることができない(しない)人**(発想力を発信したい"Imaginator"）  
この二人を繋ぐ場を提供する  
- Imaginatorはアイディアを投稿する
- Creatorはアイディアをもとに作品をつくり、それを投稿する

# 制作背景（意図）
「作品を作りたいが、そのネタとなるアイディアがない」「せっかく思いついたアイディアを誰かに共有したい」そんな思いを持つユーザーを結びつけ、それぞれの悩みを互いに解決し合います。  
開発のきっかけは、自身がオリジナルアプリのテーマに悩んだ際に、「何かを形にしたいが、良い題材がない」という同じ悩みを持つ人は多くいるのではないか、と思ったことです。  
また、これとは逆に「アイディアは思いつくけどそれを形にする力が無い」「形にするつもりはないが、アイディアは発信したい」という悩みもあるはずだと考え、これらの課題を同時に解決できる場を作りました。  
### お互いがWin-Winな関係になる (開発途中)
Imaginatorにはアイディア投稿ポイントを、Creatorには作品投稿ポイントをそれぞれ加算していきます。これを「*信用スコア*」のように扱い、各ユーザーの発想力、技術力を数値として表します。  
将来的には、この数値が就職活動など自身の力を示す必要がある場面で、個人の評価として利用されることを目指します。  
(*信用スコア*  
個人の信用力を数値化したもの。目に見えない「信用」を数値化し、様々な特典やサービスが受けられる。日本でも、みずほ銀行とソフトバンクが出資した「J.Score」やLINE CreditのLINE Scoreなどが開始されている。  
参考:総務省平成30年版情報通信白書)
<br/>
<br/>

# DEMO
### トップページ（アイディア一覧画面）
![idea-index](https://user-images.githubusercontent.com/86099522/133713080-2dad9279-a702-422c-b9fb-ed689a6596b0.png)
* アイディアを投稿したらTOP動画の下に一覧表示されます。
* アイディアの画像がない場合はデフォルトでNO IMAGEが表示されます。
* 詳細ボタンでアイディアの詳細ページへ遷移します。
* 画像右下のユーザー名からユーザー詳細ページへ遷移します。

### アイディア詳細画面
![idea-show-edit](https://user-images.githubusercontent.com/86099522/133713576-b0fc1ad7-ef99-4c1d-bddf-f80fec3f3815.png)
![idea-show-order](https://user-images.githubusercontent.com/86099522/133713848-284b35ce-de97-482f-9f42-1af06297e397.png)
* 投稿時に登録した内容が表示されます。
* 投稿ユーザーには編集・削除ボタンが表示されます。
* 投稿ユーザー以外にはそのアイディアとのマッチングボタンが表示されます。

### マッチング確認画面
![idea-order](https://user-images.githubusercontent.com/86099522/133714124-60bd298e-2fb0-45b1-abde-314c548528c0.png)
* 作品の投稿までにかかる期間を選択します。
* SNSアカウントなどを記入すれば、投稿ユーザー同士がつながることも可能（記入は任意）

### トップページ（マッチング成立後）
![idea-index-closed](https://user-images.githubusercontent.com/86099522/133714409-9e0b15a7-81c0-468e-a911-b2388641f19b.png)
* マッチングが成立したアイディアにはCLOSEの文字が表示されます。
* CLOSEがついたアイディアは詳細ページに遷移してもマッチングボタンは表示されません。

### 作品投稿フォーム
![idea-show-creation](https://user-images.githubusercontent.com/86099522/133714732-9dd8f8a0-b721-492a-ac3e-df232a22dbe8.png)
* マッチングユーザーにのみアイディア詳細ページに投稿フォームが表示されます。

### 作品表示画面
![idea-creation](https://user-images.githubusercontent.com/86099522/133714916-75cf1bd7-a641-4c14-9352-8c9ff78aed23.png)
* アイディア詳細の下に投稿作品が表示されます。
<br/>

# 工夫したポイント
- 1つのアイディアに紐付くのは1つの作品であること<br/>
  複数の作品が紐付くと、良し悪しを比較されてしまうと思いました。一期一会の出会いを楽しんでもらえればと思います。
- 作品のカテゴリーに「こだわらない」を入れていること<br/>
  Creatorに自由な表現をしてもらいたいと思いました。一方で、Imaginatorが希望する形も選択できるようにしています。
- アイディア詳細の下に作品が表示されること<br/>
  1つのページに表示することで、各内容を閲覧しやすいようにしました。
- TOP画像がスライドで表示されること<br/>
  多くのサイトで取り入れられているこの機能をいいなと思っていたので搭載しました。
<br/>

# 使用技術(開発環境)
## バックエンド
Ruby 2.6.5、Rails 6.0.0
***
## フロントエンド
HTML、CSS、JavaScript、JQuery、Bootstrap
***
## データベース
MySQL2、SequelPro
***
## ソース管理
GitHub、GitHubDesktop
***
## エディタ
VSCode
***
<br/>

# 実装機能
- ユーザー登録、ログイン機能(devise)
- 投稿機能 (アイディア、作品)
  * 画像投稿(ActiveStorage)
- アイディア、作品投稿ユーザーのマッチング機能
- 投稿詳細ページ
- ユーザー詳細ページ
## 実装予定機能
- 投稿数に応じてユーザーにポイントが加算される機能
- 保有ポイントがユーザーページにグラフで表示され、投稿の都度更新される機能
- 投稿作品編集機能
- 作品の動画投稿機能
- AWS S3の導入
- アイディアの検索機能
- 「いいね」機能
- 作品へのコメント機能

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
| email       | string     |                   |
| user        | references | foreign_key: true |
| idea        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :idea

## Creationsテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| comment     | text       | null: false       |
| day         | string     | null: false       |
| user        | references | foreign_key: true |
| idea        | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :idea
