class HomeController < ApplicationController
    def index
    end
  
    #   @this_variable works everywhere 
    #    this_variable works inside a single function
    #   call  "" <%=  @this_variable %>  " in any view/place
    def about
  
      @about_me = 'My name is ian very harders'
  
      @answer = 2+2
  
  
    end
  
  end
  