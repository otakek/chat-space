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
## userテーブル

|Column|Type|Options|
|------|----|-------|
|id|bigint|null: false, unique: true|
|nickname|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false, unique: true|
## chatテーブル

|Column|Type|Options|
|------|----|-------|
|id|bigint|null: false, unique: true|
|image|string|null: false|
|text|text|null: false|
|group_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
## groupテーブル

|Column|Type|Options|
|------|----|-------|
|id|bigint|null: false, unique: true|
|user_id|integer|null: false, foreign_key: true|
|chat_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
## chats_groupsテーブル

|Column|Type|Options|
|------|----|-------|
|chat_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user