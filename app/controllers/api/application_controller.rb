 class Api::ApplicationController < ActionController::API

        skip_before_action :verify_authenticity_token
        include DeviseTokenAuth::Concerns::SetUserByToken      
end
      