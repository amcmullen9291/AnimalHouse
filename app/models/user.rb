class User < ApplicationRecord
    belongs_to :appointment 
    has_secure_password 

    def self.find_or_create_from_auth_hash(auth_hash)
        user = where(provider: auth_hash.provider, uid: auth_hash.uid).first_or_create
        user.update(
          name: auth_hash.info.nickname,
          token: auth_hash.credentials.token,
          secret: auth_hash.credentials.secret
        )
        user
      end
    
    private 

    def current_user
        @user[:id] == session[:id] if session[:user_id]
    end

    def logged_in?
        !current_user.nil?
    end


end
