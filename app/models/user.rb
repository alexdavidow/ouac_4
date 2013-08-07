
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :shopping_cart_id, :password, :password_confirmation, :remember_me, 
                  :identities, :admin, :name, :total_score, :phone, :address 
  # attr_accessible :title, :body

  has_many :identities
  has_many :cupcakes
  has_one :shopping_cart, dependent: :destroy

  validates_presence_of :total_score

  # Before creation of a new user, create a new shopping cart and associate them
  after_create :create_cart

  private

  def self.find_for_twitter_oauth(auth, user)
    identity = user.identities.where(provider: auth.provider).first
    if identity
      identity.update_attributes(name: auth.extra.raw_info.name,
                                         user_name: auth.extra.raw_info.screen_name,
                                         provider: auth.provider,
                                         uid: auth.uid,
                                         url: auth.info.urls.Twitter,
                                         image: auth.extra.raw_info.profile_image_url_https,
                                         token: auth.extra.access_token.token,
                                         secret: auth.extra.access_token.secret,
                                         user_id: user.id)
    else
      user.identities << Identity.create(
        name: auth.extra.raw_info.name,
                                         user_name: auth.extra.raw_info.screen_name,
                                         provider: auth.provider,
                                         uid: auth.uid,
                                         url: auth.info.urls.Twitter,
                                         image: auth.extra.raw_info.profile_image_url_https,
                                         token: auth.extra.access_token.token,
                                         secret: auth.extra.access_token.secret,
                                         user_id: user.id)
      user.save!
    end
    user
  end

  def create_cart
    self.shopping_cart = ShoppingCart.new(user_id: self.id, user: self)
  end

end
