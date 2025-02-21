# ベースイメージ
FROM node:18

# 作業ディレクトリ
WORKDIR /app

# パッケージインストール
COPY package*.json ./

# 依存関係のインストール
RUN npm install

# ソースコードをコピー
COPY . .

# アプリをビルド
RUN npm run build

# コンテナ起動時に実行するコマンド
CMD ["npm", "run","start"]