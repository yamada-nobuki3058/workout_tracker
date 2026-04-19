# Rubyの公式イメージを使用（バージョン3.2.2）
FROM ruby:3.2.2

# コンテナ内の作業ディレクトリを /rails に設定
WORKDIR /rails

# 必要なパッケージをインストール
# - build-essential: gemのビルドに必要
# - libpq-dev: PostgreSQL接続用
# - nodejs: JavaScript実行（Railsの一部で必要）
RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev nodejs

# GemfileとGemfile.lockを先にコピー
# （キャッシュを効かせてbundle installを高速化するため）
COPY Gemfile Gemfile.lock ./

# gemをインストール
RUN bundle install

# アプリケーションのコードをすべてコピー
COPY . .

# コンテナの3000番ポートを開放（Rails用）
EXPOSE 3000

# コンテナ起動時に実行するコマンド
# - 古いPIDファイルを削除（サーバ起動エラー防止）
# - Railsサーバを全IP（0.0.0.0）で起動
CMD ["bash", "-c", "rm -f tmp/pids/server.pid && bundle exec rails s -b 0.0.0.0"]
