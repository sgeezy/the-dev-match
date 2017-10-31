class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:twitter]
  belongs_to :plan
  has_one :profile
  attr_accessor :stripe_card_token
  
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
        user.provider = auth.provider
        user.uid = auth.uid
        user.email = auth.info.email if auth.info.email.present?
        user.password = Devise.friendly_token[0,20]
    end
  end
  
  # def self.create_from_omniauth(auth)
  #   create! do |user|
  #     # user.email = auth["info"]["email"]
  #     user.provider = auth["provider"]
  #     user.uid = auth["uid"]
  #     user.name = auth["info"]["nickname"]
  #   end
  # end
  
  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: email, plan: plan_id, source: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  end
end
