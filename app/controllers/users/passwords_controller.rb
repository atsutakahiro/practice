class Users::PasswordsController < Devise::PasswordsController
  protected

  def after_resetting_password_path_for(resource)
    dash_boards_index_path
  end
end
