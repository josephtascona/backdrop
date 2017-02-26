module UsersHelper
  def full_name
    @user.first_name + ' ' + @user.last_name
  end
  
  def location
    @user.city + ', ' + @user.state
  end
end
