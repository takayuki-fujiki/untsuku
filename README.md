# アプリケーション名
運動つづく君

# アプリケーション概要
運動した内容を記録し、他のユーザと共有することで

# URL
未デプロイのためなし

# テスト用アカウント
未デプロイのためなし

# 利用方法
新規ユーザ登録→ログイン→POSTボタンを押下→運動した記録を入力し登録ボタンを押す
他のユーザにコメントしたりフォローしたりイイネしたりして楽しい気分になる。

# 目指した課題解決
運動が続かない人が続けられるようにする

# 洗い出した要件
・ユーザ登録、ログイン
・ユーザフォロー
・運動内容の投稿、編集、削除
・マイページ機能
・投稿へのコメント
・投稿へのイイネ（イイネ数表示も含む）

# 実装した機能した機能についてのGIFと説明
未デプロイのためなし

# 実装予定の機能
・マイページに運動の全記録を集計、統計分析
・マイページで消費カロリー表示
・ユーザ自身で運動内容を指定、表示できる

# データベース設計
ER図未作成

# ローカルでの動作方法
不明

# テーブル設計
## usersテーブル
| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |

### Association
- has_many :posts
- has_many :comments

## postsテーブル
| Column              | Type       | Options                        |
| ------------------- | ---------- | ------------------------------ |
| date                | date       | null: false                    |
| post                | text       |                                |
| execercise1         | integer    | null: false                    |
| execercise2         | integer    | null: false                    |
| execercise3         | integer    | null: false                    |
| execercise4         | integer    | null: false                    |
| execercise5         | integer    | null: false                    |
| user                | references | null:false, foreign_keys: true |

### Association
belongs_to :user
has_many :comments

## commentsテーブル
| Column      | Type       | Options                         |
| ----------- | ---------- | ------------------------------- |
| comment     | text       | null: false, foreign_keys: true |
| post        | references | null: false, foreign_keys: true |
| user        | references | null: false, foreign_keys: true |

### Association
belongs_to :user
belongs_to :post

## relationsテーブル
| Column  | Type       | Options                         |
| ------- | ---------- | ------------------------------- |
| user    | references | null: false, foreign_keys: true |
| follow  | references | 

### Association
belongs_to :user
belongs_to :follow, class_name: user