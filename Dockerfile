# Node.jsの公式イメージをベースにする
FROM node:20-alpine

# アプリケーションディレクトリを設定
WORKDIR /usr/src/app

# package.json と package-lock.json をコピー
COPY package*.json ./

# 依存関係をインストール
RUN npm install

# アプリケーションのソースコードをコピー（開発環境では、このステップをスキップし、ボリュームを使用）
COPY . .

# アプリケーションのポートを公開
EXPOSE 3000

# アプリケーションの起動コマンド
CMD ["npm", "run", "start:dev"]
