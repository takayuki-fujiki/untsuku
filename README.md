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