class User < ApplicationRecord
  has_one :reservation, dependent: :destroy
  has_one :suggestion, dependent: :destroy
  has_one :user_datum, dependent: :destroy
  validates :email, presence: true
  validates :first_name, presence: true
  validates :last_name, presence: true



  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :registerable, :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable, :omniauthable, omniauth_providers: [:facebook]

  mount_uploader :profile_pic, ProfilePicUploader

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.skip_confirmation!
      user.save
    end

    return user
  end

  def has_reservation?
    self.reservation == nil
  end

  def has_user_data?
    self.user_datum == nil
  end

  def has_paid?
    self.reservation.payment_status == "paid"
  end
end
