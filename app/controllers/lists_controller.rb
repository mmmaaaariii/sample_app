class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @List = List.new
  end
  
  def create
    #インスタンス作成：データを受け取り新規登録
    list = List.new(list_parmas)
    #メソッド実行：データをデータベースに保尊するためのsaveメソッド
    list.save
    # リダイレクト：トップ画面
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメーター
  def list_parmas
    parmas.require(:list).permit(:title, :body)
  end
  
end

