class Api::BooksController < ApplicationController
  def index
    # 表示するページの番号を指定
    page = params[:page] || 1

    # １ページあたりの表示件数を指定
    per = params[:per] || 10

    # ページネーションで指定レコードを取得
    books = Book.page(page).per(per)

    # ページネーションした時の全ページ数
    total_pages = books.total_pages

    # レスポンスデータの定義
    response = {
      # bookレコードはidとnameフィールドのみ表示する
      books: books.select(:id, :name),
      total_pages: total_pages
    }

    # json形式でレスポンスを返却
    render json: response
  end
end
