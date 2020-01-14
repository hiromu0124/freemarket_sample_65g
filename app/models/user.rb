class User < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  
  belongs_to_active_hash :prefecture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  
  def self.from_omniauth(auth)
  sns = SnsCredential.where(provider: auth.provider, uid: auth.uid).first_or_create
  # sns認証したことがあればアソシエーションで取得
  # 無ければemailでユーザー検索して取得orビルド(保存はしない)
  user = sns.user || User.where(email: auth.info.email).first_or_initialize(
    nickname: auth.info.name,
      email: auth.info.email
  )
  # userが登録済みの場合はそのままログインの処理へ行くので、ここでsnsのuser_idを更新しておく
  if user.persisted?
    sns.user = user
    sns.save
  end
  { user: user, sns: sns }
end


  has_many :userlikes
  has_many :product_messages
  has_many :product_likes
  has_many :orders
  has_many :product_comments
  has_many :products
  has_many :sns_credentials
end
