# 個人開発アプリ

## アプリ名：Simple 健康管理 App 3C

## 概要
#### グラフ、カレンダー、カロリー計算のできるWebアプリケーション  
　ユーザー毎にデータの紐付けがされており、ログインしたユーザーの情報のみ画面上に表示される  
* グラフ  
　身長、体重を入力すると、BMI、基礎代謝を算出してデータベースへ保存される  
　保存データから棒グラフを描画  

* カレンダー  
　月毎のカレンダーを表示  
　予定を入力すると、カレンダー上に入力した予定が表示される  

* カロリー計算  
　データベースに登録してある、食品のカロリー情報から、ユーザーが入力した値と一致するデータを取得して、合計値を計算する

## 本番環境
  * URL：http://54.64.0.36/
### Basic 認証の ID/Pass
  * ID：hoge
  * Pass：1234
### 確認用アカウント
  * メールアドレス：test@test
  * Password：12345678

## 制作背景（意図）
　パソコンの前で1日中作業をしていると、体を動かすことが少なくなるため、健康状態が悪くなってしまう。自身の健康状態が常に把握できる独自のアプリケーションがあれば、健康状態の悪化を事前に気づき防ぐことができると考えた。また、一人暮らしで生活をしていると、食生活も乱れることが増えるため、食べた物や摂取したカロリーを管理できれば、健康的な体の状態を維持できると考え、当アプリを作成しようと考えた。  
　既存のアプリケーションに、カロリー計算アプリやカレンダーアプリは存在するが、機能を少なくしてより使いやすくすれば、手間も掛からず、継続して使用できると考えた。  
　また、今回のアプリ開発として、スクールで学んだスキルや知識を活かして作成することを目標としたため、開発環境は同じ環境で作成した。  

## 工夫ポイント
　動的な部分が少ないため、JavaScriptを用いて、サイドバー表示を動的にできるように実装した。また、サイドバーの表示を各機能毎に変わるようにした。  
　カロリー計算で、リセットボタンが押されるまでは、合計値と入力データを画面上に残るように実装した。また、入力した食品名と完全一致するデータベース上のデータを用いて演算を行い、データベースの情報はユーザーによって追加、削除もできるように実装した。  
　スクールで学んだ学習内容を活かして、自分で1から考えてアプリケーションを作成したいと思ったため、学んだ内容をアプリ内の様々な箇所で使用した。

## 使用技術（開発環境）
Ruby on Rails, JavaScript, ruby, HTML, CSS, AWS

## 課題・今後実装したい機能
* ビューがシンプルすぎるため、デザインの工夫
* カロリー計算後、結果を日付毎に保存し、カレンダー機能上で確認できるようにする
* カロリー計算に用いたデータを保存し、何を入力したのか後から確認できるようにする
* 食品毎のカロリーデータをスクレイピング可能な情報から取得し、DBへ保存する

## DB 設計
### users テーブル
| Column   | Type    | Options     |
| -------- | ------- | ----------- |
| name     | string  | null: false |
| email    | string  | null: false |
| password | string  | null: false |
| age      | integer | null: false |

#### Association
has_many : charts  
has_many : calendars  
has_many : calories  


### charts テーブル
| Column     | Type    | Options |
| ---------- | ------- | ------- |
| name       | string  |         |
| weight     | integer |         |
| BMI        | float   |         |
| date       | date    |         |
| Proper     | integer |         |
| length     | integer |         |
| metabolism | integer |         |

#### Association
belongs_to : user


### calendars テーブル
| Column     | Type   | Options |
| ---------- | ------ | ------- |
| title      | string |         |
| body       | string |         |
| start_date | date   |         |
| end_date   | date   |         |
| name       | string |         |

#### Association
belongs_to : user


### calories テーブル
| Column     | Type    | Options |
| ---------- | ------- | ------- |
| name       | string  |         |
| calorie    | integer |         |
| calorie_id | integer |         |

#### Association
belongs_to : user  
has_many : objs


### objs テーブル
| Column  | Type    | Options     |
| ------- | ------- | ----------- |
| obj_id  | integer |             |
| obj     | string  | null: false |
| calorie | integer | null: false |

#### Association
belongs_to : calorie
