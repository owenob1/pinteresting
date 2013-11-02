<<<<<<< HEAD
    class User < ActiveRecord::Base

      attr_accessor :login
      devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :authentication_keys => [:login]

      validates_uniqueness_of :username
      validates_presence_of :username
      validates :username, length: { in: 4..20 }

      def self.find_first_by_auth_conditions(warden_conditions)
        conditions = warden_conditions.dup
        if login = conditions.delete(:login)
          where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
          else
            where(conditions).first
          end
      end 

      has_many :pins     
    end
=======
class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

   has_many :pins

   validates :name, presence: true
end
>>>>>>> ebc11f4fd17b6f36d67bba94b1e4e47ec78116f2
