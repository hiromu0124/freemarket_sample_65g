# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout 'newuser'
  before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up

  def new  # 新規インスタンス作成
    @user = User.new
  end

  def new_phone_number #1ページ目の情報をセッションに保存(ユーザー基本情報)
    session[:nickname] = user_params[:nickname]
    session[:email] = user_params[:email]
    session[:password] = user_params[:password]
    session[:full_name] = user_params[:full_name]
    session[:name_kana] = user_params[:name_kana]
    session[:birthday_year] = user_params[:birthday_year]
    session[:birthday_manth] = user_params[:birthday_manth]
    session[:birthday_day] = user_params[:birthday_day]
    @user = User.new
  end

  def new_street_address #2ページ目の情報をセッションに保存(電話番号)
    session[:tell] = user_params[:tell]
    @user = User.new
  end

  def new_payment #3ページ目の情報をセッションに保存(住所)
    session[:postalcode] = user_params[:postalcode]
    session[:prefecture_id] = user_params[:prefecture_id]
    session[:city] = user_params[:city]
    session[:little_adress] = user_params[:little_adress]
    session[:building] = user_params[:building]
    @user = User.new
  end

  def create
    @user = User.new(
      nickname: session[:nickname],
      email: session[:email],
      password: session[:password],
      full_name: session[:full_name], 
      name_kana: session[:name_kana], 
      birthday_year: session[:birthday_year],
      birthday_manth: session[:birthday_manth],
      birthday_day: session[:birthday_day],
      tell: session[:tell],
      postalcode: session[:postalcode],
      prefecture_id: session[:prefecture_id],
      city: session[:city],
      little_adress: session[:little_adress],
      building: session[:building]
    )
    if @user.save
      session[:id] = @user.id
      redirect_to done_path
    else
      
    end
  end

  def done
    sign_in User.find(session[:id]) unless user_signed_in?
  end

  # POST /resource
  # def create
  #   super
  # end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end

  def user_params
    params.require(:user).permit(
      :nickname, 
      :email, 
      :password, 
      :password_confirmation, 
      :full_name, 
      :name_kana, 
      :tell,
      :postalcode,
      :prefecture_id,
      :city,
      :building,
      :little_adress,
      :birthday_year,
      :birthday_manth,
      :birthday_day,
    )
  end
  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end


end
