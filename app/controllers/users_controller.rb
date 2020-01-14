class UsersController < ApplicationControllerz
  def edit
  end
  
  def show
  end
  
  def edit2
    @user=User.find(current_user.id)
  end
  def logout
  end
end
