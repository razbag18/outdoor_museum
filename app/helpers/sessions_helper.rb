module SessionsHelper
  def current_user
    User.find_by(id: session[:user_id])
  end
  # if theres a current user, then return true, otherwise if not, return false
  def logged_in? 
    # !!current_user either returning true or false without if statement
    if current_user #forcing current_user user object: true, or nil: false
      true
    else
      false
    end
  end

end
