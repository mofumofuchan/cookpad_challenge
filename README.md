Sketch it!
===

[![CircleCI](https://circleci.com/gh/mofumofuchan/cookpad_challenge/tree/master.svg?style=svg)](https://circleci.com/gh/mofumofuchan/cookpad_challenge/tree/master)
[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

![Sketch it!](https://raw.githubusercontent.com/mofumofuchan/cookpad_challenge/master/app/assets/images/logo.png)

## 概要
Sketch it! は、気軽なお絵かきを通じて、人々の繋がりを生み出す「イラストコミュニケーションサイト」です。

## Requirement
- Ruby 2.3.0
- Bundler 1.3.7
- Rails 5.0.0.1
で動作を確認しています。

## Quick Start

### サーバーの起動
```sh
git clone git@github.com:mofumofuchan/cookpad_challenge.git
bundle install --path vender/bundle
bundle exec rails s
```
### アクセス
``http://localhost:3000/``

## デプロイ
masterにPRがマージされればCircle CIによって自動的に本番環境(heroku)にデプロイされます。

## テスト
Circle CIによる自動テストが走っています。

## ライセンス
MIT License
