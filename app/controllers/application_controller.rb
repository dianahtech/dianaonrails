class ApplicationController < ActionController::Base
        ##devise.rb navigationalformats(:json)
        #skip_before_action :verify_authenticity_token        
        #protect_from_forgery with: :null_session    
        

        protect_from_forgery unless: -> { request.format.json? }
end
