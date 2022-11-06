class ApplicationController < ActionController::Base
        ##devise.rb navigationalformats(:json)

        #protect_from_forgery unless: -> { request.format.json? }
        protect_from_forgery with: :null_session
        #include DeviseTokenAuth::Concerns::SetUserByToken
        #skip_before_action :verify_authenticity_token
end
