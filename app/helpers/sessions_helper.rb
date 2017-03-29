module SessionsHelper

    #logs the user in
    def log_in(user)
        session[:user_id] = user.id
    end

    #returns the current logged in user of there is one
    def current_user
        @current_user ||= User.find_by(id: session[:user_id])
    end
    
    def logged_in?
        !current_user.nil?
    end
    
    
end
