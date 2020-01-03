# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# README

# DB設計
## 『User』

| column   | type        | option         |
|:---------|:------------|:---------------|
| name     | string      | Not null       |

1. has_many :messages
2. has_many :groups_users
3. has_many :groups, through: :groups_users



## 『Group』

| column   | type        | option         |
|:---------|:------------|:---------------|
| name     | string      | Not null       |

1. has_many :messages
2. has_many :groups_users
3. has_many :users, through: :groups_users


##『message』

| column   | type        | option         |
|:---------|:------------|:---------------|
| body     | string        | Not null       |
| image    | string      |                |
| user_id  | int         | foreign key    |
| group_id | int         | foreign key    |

1. belongs_to :user
2. belongs_to :group


##『groups_users』

| column   | type        | option         |
|:---------|:------------|:---------------|
| user_id  | int         | foreign key    |
| group_id | int         | foreign key    |

1. belongs_to :user
2. belongs_to :group

