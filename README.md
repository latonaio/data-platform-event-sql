# data-platform-event-sql 

data-platform-event-sql は、データ連携基盤において、イベントデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-event-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-event-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-event-sql-header-data.sql（データ連携基盤 イベント - ヘッダデータ）
* data-platform-event-sql-header-doc-data.sql（データ連携基盤 イベント - ヘッダ文書データ）
* data-platform-event-sql-campaign-data.sql（データ連携基盤 イベント - キャンペーンデータ）
* data-platform-event-sql-game-data.sql（データ連携基盤 イベント - ゲームデータ）
* data-platform-event-sql-counter-data.sql（データ連携基盤 イベント - カウンタデータ）
* data-platform-event-sql-point-condition-element-data.sql（データ連携基盤 イベント - ポイント条件要素データ）
* data-platform-event-sql-point-transaction-data.sql（データ連携基盤 イベント - ポイント取引データ）
* data-platform-event-sql-partner-data.sql（データ連携基盤 イベント - パートナデータ）
* data-platform-event-sql-address-data.sql（データ連携基盤 イベント - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
