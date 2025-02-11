class User < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :comments, dependent: :nullify
  
    has_secure_password

    def generate_password_token!
      self.reset_password_token = generate_token
      self.reset_password_sent_at = Time.now.utc
      save!
    end
  
    def password_token_valid?
      (self.reset_password_sent_at + 2.hours) > Time.now.utc
    end
  
    def reset_password!(password)
      self.reset_password_token = nil
      self.password = password
      save!
    end
  
    private
  
    def generate_token
      SecureRandom.hex(10)
    end
  
    validates :email, presence: true, uniqueness: true
  end