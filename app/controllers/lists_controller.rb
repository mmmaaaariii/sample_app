class ListsController < ApplicationController
  def new
    # Viewへ渡すためのインスタンス変数に空のModelオブジェクトを生成する。
    @list = List.new
  end
  
  def create
    #インスタンス作成：データを受け取り新規登録
    list = List.new(list_params)
    #メソッド実行：データをデータベースに保尊するためのsaveメソッド
    list.save
    # リダイレクト：トップ画面
    redirect_to list_path(list.id)
  end

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
  end
  
  private
  # ストロングパラメーター
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end

