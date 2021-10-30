class LandpageController < ApplicationController
  
  layout "admin", only: [:users, :users_show]
  
  def index
  end
  def users
    @usuarios = User.all
  end
  def users_show 
    @roles = Rol.all
  end
end

#app/views/landpage/users.html.erb