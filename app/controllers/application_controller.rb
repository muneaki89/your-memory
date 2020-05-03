class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  ##サインアップ時に、ユーザーの名前を登録できるようにする
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  ##deviseをインストールすることでdevise_parameter_sanitizerのpermitメソッドが使えるようになりますが、これがストロングパラメータに該当する機能です。サインアップ時に入力された「name」キーの内容の保存を許可しています。
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
