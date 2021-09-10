# テーブル設計

## users テーブル

| Column          | Type   | Options     |
| --------------- | ------ | ----------- |
| email           | string | null: false |
| password        | string | null: false |
| nickname        | string | null: false |
| date_of_birth   | date   | null: false |
| first_name      | string | null: false |
| ruby_first_name | string | null: false |
| last_name       | string | null: false |
| ruby_last_name  | string | null: false |

### Association

- has_many :items
- has_many :orders

## items テーブル

| Column   | Type       | Options     |
| -------- | ---------- | ----------- |
| name     | string     | null: false |
| detail   | text       | null: false |
| category | string     | null: false |
| status   | string     | null: false |
| charges  | integer    | null: false |
| area     | string     | null: false |
| days     | string     | null: false |
| price    | integer    | null: false |
| image    |            |             |
| user     | references | foreign_key: true |

### Association

- belongs_to :user
- has_one :order

## orders テーブル

| Column      | Type       | Options     |
| ----------- | ---------- | ----------- |
| postal_code | string     | null: false |
| prefecture  | string     | null: false |
| municipal   | string     | null: false |
| address     | string     | null: false |
| telephone   | string     | null: false |
| user        | references | foreign_key: true |
| item        | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :item