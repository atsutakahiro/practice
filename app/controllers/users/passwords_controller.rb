class Users::PasswordsController < Devise::PasswordsController
  protected

  def after_resetting_password_path_for(resource)
    dash_board_path # ユーザーダッシュボード画面のパスに変更してください
  end
end
