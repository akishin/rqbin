# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## About Rqbin

Rails 4.2 ベースの RequestBin クローン。HTTP リクエストをキャプチャして inspect するための一時的なエンドポイントを作成できるツール。

## Architecture

### コアモデル
- **Page**: 一意の `request_id` を持ち、その URL に送信された全リクエストのコンテナ。`request_id` は HMAC-SHA256 で生成され、競合時はリトロライする。
- **Post**: Page に送信された HTTP リクエストを記録。http_method、params、headers、raw_post を保存。

### コントローラー
- **PostsController**: 外部から送信されたリクエストを受信して記録。CSRF 保護をスキップする必要がある（`skip_before_filter :verify_authenticity_token`）。
- **PagesController**: 新しい Page（エンドポイント）を作成し、記録されたリクエストを表示する UI を提供。

### 設定管理
- Settingslogic 使用（`app/models/settings.rb`）
- 設定ファイル: `config/application.yml`（環境ごとの設定: host、site_key、key_length）

## Common Commands

### 開発サーバー
```bash
bundle exec rails s
```

### テスト
```bash
# 単一実行
spring rspec

# 特定のファイル
spring rspec spec/models/page_spec.rb

# Guard による自動実行（開発中推奨）
bundle exec guard
```

### データベース
```bash
bundle exec rake db:migrate
bundle exec rake db:rollback
```

## Development Notes

- Ruby 2.4.4、Rails 4.2.11.1
- テンプレート: Slim
- フロントエンド: Twitter Bootstrap 2.x + SimpleForm
- テスト: RSpec + FactoryGirl + Spring + Guard

### エンコーディングに関する注意
`PostsController#create` では ASCII-8BIT エンコーディングの文字列を UTF-8 に変換している：
```ruby
v.force_encoding(Encoding::UTF_8) if v.encoding == Encoding::ASCII_8BIT
```
これは `Encoding::UndefinedConversionError` を防ぐための対策。
