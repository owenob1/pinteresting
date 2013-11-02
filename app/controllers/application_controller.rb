<<<<<<< HEAD
      class ApplicationController < ActionController::Base
      protect_from_forgery with: :exception
      before_filter :configure_permitted_parameters, if: :devise_controller?

      protected

        def configure_permitted_parameters
          devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password) }
          devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :password, :remember_me) }
        end
    end
=======
class ApplicationController < ActionController::Base
 # Prevent CSRF attacks by raising an exception.
 # For APIs, you may want to use :null_session instead.
 protect_from_forgery with: :exception
 before_filter :configure_permitted_parameters, if: :devise_controller?

protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) << :name
   devise_parameter_sanitizer.for(:account_update) << :name
 end
end
>>>>>>> ebc11f4fd17b6f36d67bba94b1e4e47ec78116f2
