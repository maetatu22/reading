# テーブル設計

## usersテーブル

| Column            | Type               | Options                       |
| ----------------- | ------------------ | ----------------------------- |
| email             | string             | null: false, uniqueness: true | 
| encrypted_password| string             | null: false                   |
| nickname          | string             | null: false                   |
| appeal            | text               | null: false                   |
| age_id            | integer            |                               |
| gender_id         | integer            |                               |

### Association

- has_many :outputs
- has_many :comments
- belongs_to_active_hash :age
- belongs_to_active_hash :gender


## outputs

| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| book_genre_id | integer    | null: false       |
| book_name     | string     | null: false       |
| post_type_id  | integer    | null: false       |
| post_text     | text       | null: false       |
| user          | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- belongs_to_active_hash :book_name
- belongs_to_active_hash :post_type


## comments

| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| comment       | text       | null: false       |
| output        | references | foreign_key: true |
| user          | references | foreign_key: true |

### Association
- belongs_to :user
- belongs_to :output

## age モデル(acrive_hash)

## gender モデル(acrive_hash)

## book_genre モデル(acrive_hash)

## post_type モデル(acrive_hash)
