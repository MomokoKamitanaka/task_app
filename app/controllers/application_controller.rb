class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  # csrf対策

  before_action :authenticate_user!
  # ログイン済ユーザーのみにアクセスを許可する
  # サインインしていない状態でアクセスしようとすると、サインインページにリダイレクトされる
  before_action :configure_permitted_parameters, if: :devise_controller?
  # 追加のパラメーターを許可したい場合は、application_controller.rbにおいてbefore_actionにconfigure_permitted_parametersメソッドを設定する。
  # deviseのコントローラーの場合のみ起動させる

  def  configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_up, keys: [:name])
  end
  # before_action :configure_permitted_parameters, if: :devise_controller?と記載することで、configure_permitted_parametersというメソッドは、devise_controllerを使うときしか処理しないということをApplicationコントローラーを読み込む前に判断する。
  # devise_parameter_sanitizer.permit(:ストロングパラメーターを追加したいアクション名, keys: [:追加するキー])

end
