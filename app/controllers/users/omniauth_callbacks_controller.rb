# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  # You should configure your model like this:
  # devise :omniauthable, omniauth_providers: [:twitter]

  # You should also create an action method in this controller like this:
  # def twitter
  # end

  # More info at:
  # https://github.com/plataformatec/devise#omniauth

  # GET|POST /resource/auth/twitter
  # def passthru
  #   super
  # end

  # GET|POST /users/auth/twitter/callback
  # def failure
  #   super
  # end

  # protected

  # The path used when OmniAuth fails
  # def after_omniauth_failure_path_for(scope)
  #   super(scope)
  # end
  # callback for facebook
#   def facebook
#     callback_for(:facebook)
#   end

#   # callback for twitter
#   def twitter
#     callback_for(:twitter)
#   end

#   # callback for google
#   def google_oauth2
#     callback_for(:google)
#   end

#   # common callback method
#   def callback_for(provider)
#     @user = User.from_omniauth(request.env["omniauth.auth"])
#     if @user.persisted?
#       sign_in_and_redirect @user, event: :authentication #this will throw if @user is not activated
#       set_flash_message(:notice, :success, kind: "#{provider}".capitalize) if is_navigational_format?
#     else
#       session["devise.#{provider}_data"] = request.env["omniauth.auth"].except("extra")
#       redirect_to new_user_registration_url
#     end
#   end

#   def failure
#     redirect_to root_path
#   end
# end
  def facebook
    authorization
  end

  def google_oauth2
    authorization
  end

  def failure
    redirect_to root_path
  end

  private

  def authorization
    sns_info = User.form_omniauth(request.env["omniauth.auth"])
    @user = sns_info[:user]

    if @user.persisted? #ユーザー情報が登録済みなので、新規登録ではなくログイン処理を行う
      sign_in_and_redirect @user, event: :authentication
    else #ユーザー情報が未登録なので、新規登録画面へ遷移する
      @sns_id = sns_info[:sns].id
      render template: 'devise/registrations/new'
    end
  end
end